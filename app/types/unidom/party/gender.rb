# Gender 是性别代码。
# 遵守 ISO 5218 和 GB/T 2261.1-2003 。

class Unidom::Party::Gender < ActiveRecord::Type::Value

  include ProgneTapera::EnumConfig

  enum :unidom_gender

end
