require 'rspec/models/unidom/party/concerns/as_source_party_shared_examples'

require 'rspec/models/unidom/party/party_relation_spec'    unless Unidom::Common::Neglection.namespace_neglected? 'Unidom::Party::PartyRelation'
require 'rspec/models/unidom/party/person_spec'            unless Unidom::Common::Neglection.namespace_neglected? 'Unidom::Party::Person'
require 'rspec/models/unidom/party/shop_spec'              unless Unidom::Common::Neglection.namespace_neglected? 'Unidom::Party::Shop'
require 'rspec/models/unidom/party/company_spec'           unless Unidom::Common::Neglection.namespace_neglected? 'Unidom::Party::Company'
require 'rspec/models/unidom/party/government_agency_spec' unless Unidom::Common::Neglection.namespace_neglected? 'Unidom::Party::GovernmentAgency'
require 'rspec/models/unidom/party/collaborating_spec'     unless Unidom::Common::Neglection.namespace_neglected? 'Unidom::Party::Collaborating'
