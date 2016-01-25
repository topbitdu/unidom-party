# Unidom Party

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The Party domain model engine includes Person, Shop, and Company models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。参与者领域模型引擎包括个人、店铺、公司的模型。

## Usage in Gemfile:
```ruby
gem 'unidom-party'
```

## Run the Database Migration:
```shell
rake db:migrate
```

## Call the Model:
```ruby
Unidom::Party::Company.valid_at.alive.first
Unidom::Party::Shop.valid_at.alive.first
Unidom::Party::People.valid_at.alive.first
```
