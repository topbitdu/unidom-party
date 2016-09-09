# Person 是个人。

class Unidom::Party::Person < ActiveRecord::Base

  self.table_name = 'unidom_people'

  include Unidom::Common::Concerns::ModelExtension
  include Unidom::Party::Concerns::AsSourceParty
  include Unidom::Party::Concerns::AsTargetParty

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

end
