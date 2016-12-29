module Unidom
  module Party
    class Engine < ::Rails::Engine

      isolate_namespace ::Unidom::Party

      include Unidom::Common::EngineExtension

      enable_initializer enum_enabled: true, migration_enabled: true

    end
  end
end
