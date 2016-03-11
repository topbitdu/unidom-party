# Party Relation 是参与者关系。

class Unidom::Party::PartyRelation < ActiveRecord::Base

  self.table_name = 'unidom_people'

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

  belongs_to :source_party, polymorphic: true
  belongs_to :target_party, polymorphic: true

  include Unidom::Common::Concerns::ModelExtension

end
