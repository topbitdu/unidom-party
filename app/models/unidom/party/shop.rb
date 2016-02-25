# Shop 是店铺。

class Unidom::Party::Shop < ActiveRecord::Base

  self.table_name = 'unidom_shops'

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

  include Unidom::Common::Concerns::ModelExtension

end
