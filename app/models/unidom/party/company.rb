# Company 是公司。

class Unidom::Party::Company < ActiveRecord::Base

  self.table_name = 'unidom_companies'

  include Unidom::Common::Concerns::ModelExtension
  include Unidom::Party::Concerns::AsSourceParty
  include Unidom::Party::Concerns::AsTargetParty

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

end
