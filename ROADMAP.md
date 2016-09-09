# Unidom Party Roadmap 参与者领域模型引擎路线图

## v0.1
1. Party Relation model & migration
2. Person model & migration
3. Shop model & migration

## v0.2
1. Improve the Party Relation model to include the Model Extension concern
2. Improved the Person model to include the Model Extension concern
3. Improved the Shop model to include the Model Extension concern

## v0.3
1. Government Agency model & migration

## v0.4
1. Company model & migration

## v0.4.1
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.5
2. Improved the Government Agency model for table name

## v0.5
1. Improved the Party Relation model to add validations for the #grade & #priority attributes
2. Improved the Party Relation model for table name

## v0.6
1. Improved the Party Relation model to add the ::relate method
2. Improved the Party Relation model to add the #source_party_is scope & the #target_party_is scope

## v0.7
1. Improve the Party Relation model to add the ::relate! method
2. Improve the Party Relation model to deprecate the ::relate method
3. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.9

## v1.0
1. Improve the Party Relation model to support the Keyword Arguments
2. Remove the deprecated methods

## v1.0.1
1. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.0

## v1.0.2
1. Improve the Party Relation model to return the created model in the ::relate! method

## v1.1
1. As Source Party concern
2. As Target Party concern
3. Improve the Company model, the Government Agency model, the Person model, & the Shop model to include the As Source Party concern & the As Target Party concern

## v1.2
1. Improve the As Source Party concern to add the #relate! method
2. Improve the As Target Party concern to add the #is_related! method
