# Unidom Party Change Log 参与者领域模型引擎变更日志

## v0.1
1. Party Relation model & migration (20010101000000)
2. Person model & migration (20010102000000)
3. Shop model & migration (20010103000000)

## v0.2
1. Improved the Party Relation model to include the Model Extension concern
2. Improved the Person model to include the Model Extension concern
3. Improved the Shop model to include the Model Extension concern

## v0.3
1. Government Agency model & migration (20010104000000)

## v0.4
1. Company model & migration (20010105000000)

## v0.4.1
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.5
2. Improved the Government Agency model for table name

## v0.5
1. Improved the Party Relation model to add validations for the #``grade`` & #``priority`` attributes
2. Improved the Party Relation model for table name

## v0.6
1. Improved the Party Relation model to add the .``relate`` method
2. Improved the Party Relation model to add the ``source_party_is`` scope & the ``target_party_is`` scope

## v0.7
1. Improved the Party Relation model to add the .``relate!`` method
2. Improved the Party Relation model to deprecate the .``relate`` method
3. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.9

## v1.0
1. Improved the Party Relation model to support the Keyword Arguments
2. Removed the deprecated methods

## v1.0.1
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.0

## v1.0.2
1. Improved the Party Relation model to return the created model in the .``relate!`` method

## v1.1
1. As Source Party concern
2. As Target Party concern
3. Improved the Company model, the Government Agency model, the Person model, & the Shop model to include the As Source Party concern & the As Target Party concern

## v1.2
1. Improved the As Source Party concern to add the #``relate!`` method
2. Improved the As Target Party concern to add the #``is_related!`` method

## v1.3
1. Collaborating model & migration
2. Improved the As Source Party concern to add the #``relate?`` method
3. Improved the As Target Party concern to add the #``is_related?`` method

## v1.4
1. Improved the Collaborating model to add the .``collaborate!`` method

## v1.5
1. As Collaboration concern
2. As Collaborator concern

## v1.6
1. Improved the As Collaboration concern to add the #``is_collaborated!`` method
2. Improved the As Collaborator concern to add the #``collaborate!`` method

## v1.7
1. Improved the As Collaboration concern to add the #``is_collaborated?`` method
2. Improved the As Collaborator concern to add the #``collaborate?`` method

## v1.7.1
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.6

## v1.7.2
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.7

## v1.8
1. Gender enum code

## v1.8.1
1. Improved the Gender enum code to follow the GB/T 2261.1-2003 in the i18n resources
2. Improved the Ruby Gem Specification to depend on [progne_tapera](https://github.com/topbitdu/progne_tapera) v0.3

## v1.8.2
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.7.1
2. Improved the Ruby Gem Specification to never depend on [progne_tapera](https://github.com/topbitdu/progne_tapera)

## v1.8.3
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.8
2. Improved the Engine class to integrate the Engine Extension concern

## v1.8.4
1. As Source Party shared examples
2. Party Relation examples
3. Person examples
4. RSpec module

## v1.8.5
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.9
2. Improved the models to support the namespace neglecting

## v1.9
1. Models RSpec examples manifest
2. Types RSpec examples manifest
3. Validators RSpec examples manifest

## v1.9.1
1. Improved the Gender spec to follow GB/T 2261-1980

## v1.9.2
1. Improved the Collaborating spec for the validations on the #``name`` attribute
2. Improved the Company spec for the validations on the #``name`` attribute
3. Improved the Government Agency spec for the validations on the #``name`` attribute
4. Improved the Person spec for the validations on the #``name`` attribute
5. Improved the Shop spec for the validations on the #``name`` attribute

## v1.9.3
1. Improved the Party Relation spec for the ``source_party_is`` scope, & the ``target_party_is`` scope
2. Improved the Collaborating spec for the ``belongs_to :collaborator, polymorphic: true`` macro

## v1.9.4
1. Improved the Collaborating spec for the validations on the #``name`` attribute
2. Improve the Company spec for the validations on the #``name`` attribute
3. Improve the Government Agency spec for the validations on the #``name`` attribute
4. Improve the Person spec for the validations on the #``name`` attribute
5. Improve the Shop spec for the validations on the #``name`` attribute

## v1.9.5
1. Improve the Company spec for the As Source Party concern
2. Improve the Government Agency spec for the As Source Party concern
3. Improve the Shop spec for the As Source Party concern

## v1.9.6
1. As Target Party shared examples
2. Improve the Company spec for the As Target Party concern
3. Improve the Government Agency spec for the As Target Party concern
4. Improve the Person spec for the As Target Party concern
5. Improve the Shop spec for the As Target Party concern
6. RSpec shared examples manifest

## v1.9.7
1. Improve the As Source Party concern for the argument validations of the #``relate!`` method, & the #``relate?`` method
2. Improve the As Target Party concern for the argument validations of the #``is_related!`` method, & the #``is_related?`` method
3. Improve the As Source Party shared examples for the argument validations of the #``relate!`` method, & the #``relate?`` method
4. Improve the As Target Party shared examples for the argument validations of the #``is_related!`` method, & the #``is_related?`` method
5. Improve the Company spec for the As Source Party concern, & the As Target Party concern
6. Improve the Government Agency spec for the As Source Party concern, & the As Target Party concern
7. Improve the Person spec for the As Source Party concern, & the As Target Party concern
8. Improve the Shop spec for the As Source Party concern, & the As Target Party concern

## v1.9.8
1. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.10
2. Improve the Party Relation migration, the Person migration, the Shop migration, the Government Agency migration, the Company migration, the Collaborating migration for the #``opened_at`` column, & the #``closed_at`` column
