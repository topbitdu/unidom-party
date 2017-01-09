##
# Shop 是店铺。

class Unidom::Party::Shop < Unidom::Party::ApplicationRecord

  self.table_name = 'unidom_shops'

  include Unidom::Common::Concerns::ModelExtension
  include Unidom::Party::Concerns::AsSourceParty
  include Unidom::Party::Concerns::AsTargetParty

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

end
