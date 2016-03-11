# Unidom Party 参与者领域模型引擎

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/unidom-party.svg)](https://badge.fury.io/rb/unidom-party)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The Party domain model engine includes Person, Shop, and Company models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。参与者领域模型引擎包括个人、店铺、公司的模型。

## Usage in Gemfile
```ruby
gem 'unidom-party'
```

## Run the Database Migration
```shell
rake db:migrate
```

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
```
