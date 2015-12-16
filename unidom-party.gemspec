lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require 'unidom/party/version'

Gem::Specification.new do |spec|
  spec.name          = 'unidom-party'
  spec.version       = Unidom::Party::VERSION
  spec.authors       = [ 'Topbit Du' ]
  spec.email         = [ 'topbit.du@gmail.com' ]
  spec.summary       = %q{The Party domain model engine includes Person, Shop, and Company models.}
  spec.description   = %q{Unidom (UNIfied Domain Object Model) is a series of domain model engines. The Party domain model engine includes Person, Shop, and Company models. Unidom (统一领域对象模型)是一系列的领域模型引擎。参与者领域模型引擎包括个人、店铺、公司的模型。}
  spec.homepage      = 'http://github.com/topbitdu/unidom-party'
  spec.license       = 'MIT'

  spec.files         = Dir[ '{app,config,db,lib}/**/*', 'LICENSE', 'MIT-LICENSE', 'Rakefile', 'README.md'] #{}`git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = [ 'lib' ]

  spec.add_dependency 'rails', '~> 4.2'
  spec.add_dependency 'pg',    '~> 0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

end
