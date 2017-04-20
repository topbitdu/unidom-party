# Unidom Party 参与者领域模型引擎

[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/gems/unidom-party/frames)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)

[![Gem Version](https://badge.fury.io/rb/unidom-party.svg)](https://badge.fury.io/rb/unidom-party)
[![Dependency Status](https://gemnasium.com/badges/github.com/topbitdu/unidom-party.svg)](https://gemnasium.com/github.com/topbitdu/unidom-party)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The Party domain model engine includes Person, Shop, and Company models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。参与者领域模型引擎包括个人、店铺、公司的模型。



## Recent Update

Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.



## Usage in Gemfile

```ruby
gem 'unidom-party'
```



## Run the Database Migration

```shell
rake db:migrate
```
The migration versions start with 200101.



## Call the Model

```ruby
company = Unidom::Party::Company.valid_at.alive.first
company.target_party_relations

shop = Unidom::Party::Shop.valid_at.alive.first
shop.source_party_relations

person = Unidom::Party::People.valid_at.alive.first
person.target_party_relations

government_agency = Unidom::Party::GovernmentAgency.valid_at.alive.first
government_agency.supervision_region

relation = Unidom::Party::PartyRelation.relate! source_party: company, target_party: person, linkage_code: 'EMPL', grade: 0, priority: 0, opened_at: Time.now, attributes: {}
# The company employs the person

Unidom::Party::PartyRelation.source_party_is(company).target_party_is(person).valid_at.alive
# Find all relationships from the company & the person, like employment

Unidom::Party::Collaborating.create! collaboration: project, collaborator: person, role_code: 'PJMG', name: 'Project Manager'
# or the following source code do the same thing:
Unidom::Party::Collaborating.collaborate! collaboration: project, collaborator: person, role_code: 'PJMG', name: 'Project Manager', opened_at: Time.now, priority: 1, grade: 1, description: nil, instruction: nil
```



## Inlcude the Concerns

```ruby
include Unidom::Party::Concerns::AsSourceParty
include Unidom::Party::Concerns::AsTargetParty
include Unidom::Party::Concerns::AsCollaboration
include Unidom::Party::Concerns::AsCollaborator
```

### As Source Party concern

The As Source Party concern do the following tasks for the includer automatically:
1. Define the has_many :target_party_relations macro as: ``has_many :target_party_relations, class_name: 'Unidom::Party::PartyRelation', as: :source_party``
2. Define the #relate! method as: ``relate!(to: nil, due_to: nil, at: Time.now)``
3. Define the #relate? method as: ``relate?(to: nil, due_to: nil, at: Time.now)``

### As Target Party concern

The As Target Party concern do the following tasks for the includer automatically:
1. Define the has_many :source_party_relations macro as: ``has_many :source_party_relations, class_name: 'Unidom::Party::PartyRelation', as: :target_party``
2. Define the #is_related! method as: ``is_related!(to: nil, due_to: nil, at: Time.now)``
3. Define the #is_related? method as: ``is_related?(to: nil, due_to: nil, at: Time.now)``

### As Collaboration concern

The As Collaboration concern do the following tasks for the includer automatically:
1. Define the has_many :collaboratings macro as: ``has_many :collaboratings, class_name: 'Unidom::Party::Collaborating', as: :collaboration``
2. Define the #is_collaborated! method as: ``is_collaborated!(by: nil, as: nil, at: Time.now, name: nil, priority: 0, grade: 0)``
3. Define the #is_collaborated? method as: ``is_collaborated?(by: nil, as: nil, at: Time.now, priority: 0, grade: 0)``

### As Collaborator concern

The As Collaborator concern do the following tasks for the includer automatically:
1. Define the has_many :collaboratings macro as: ``has_many :collaboratings, class_name: 'Unidom::Party::Collaborating', as: :collaborator``
2. Define the #collaborate! method as: ``collaborate!(on: nil, as: nil, at: Time.now, name: nil, priority: 0, grade: 0)``
3. Define the #collaborate? method as: ``collaborate?(on: nil, as: nil, at: Time.now, priority: 0, grade: 0)``



## Enum codes

### Gender enum code

```ruby
# http://en.wikipedia.org/wiki/ISO/IEC_5218
# ISO 5218, GB/T 2261.1-2003
Unidom::Party::Gender::NOT_KNOWN
Unidom::Party::Gender::MALE
Unidom::Party::Gender::FEMALE
Unidom::Party::Gender::NOT_APPLICABLE
```



## Disable the Model & Migration

If you only need the app components other than models, the migrations should be neglected, and the models should not be loaded.
```ruby
# config/initializers/unidom.rb
Unidom::Common.configure do |options|

  options[:neglected_namespaces] = %w{
    Unidom::Party
  }

end
```



## RSpec examples

### RSpec example manifest (run automatically)

```ruby
# spec/models/unidom_spec.rb
require 'unidom/party/models_rspec'

# spec/types/unidom_spec.rb
require 'unidom/party/types_rspec'

# spec/validators/unidom_spec.rb
require 'unidom/party/validators_rspec'
```

### RSpec shared examples (to be integrated)

```ruby
# The Unidom::Party::Company model, the Unidom::Party::GovernmentAgency model, the Unidom::Party::Person model, & the Unidom::Party::Shop model already include the Unidom::Party::Concerns::AsSourceParty concern, & the Unidom::Party::Concerns::AsTargetParty concern

# app/models/your_party.rb
class YourParty < ActiveRecord::Base

  include Unidom::Common::Concerns::ModelExtension
  include Unidom::Party::Concerns::AsSourceParty
  include Unidom::Party::Concerns::AsTargetParty

end

# spec/support/unidom_rspec_shared_examples.rb
require 'unidom/party/rspec_shared_examples'

# spec/models/your_party_spec.rb
describe YourParty, type: :model do

  context do

    model_attribtues = {
      your_attribtue: 'your value'
    }

    target_party = described_class.create! model_attributes
    source_party = described_class.create! model_attributes
    linkage_code = 'SELF'

    it_behaves_like 'Unidom::Party::Concerns::AsSourceParty', model_attributes, target_party, linkage_code
    it_behaves_like 'Unidom::Party::Concerns::AsTargetParty', model_attributes, source_party, linkage_code

  end

end
```
