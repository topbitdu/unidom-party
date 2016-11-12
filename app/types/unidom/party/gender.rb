class Unidom::Party::Gender < ActiveRecord::Type::Value

  include ProgneTapera::EnumConfig

  enum :unidom_gender

end
