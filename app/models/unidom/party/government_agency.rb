# Government Agency 是政府机构。
# function_code 是行政职能代码： PLST: Police Station 公安局, PLSS: Police Sub-Station 派出所
class Unidom::Party::GovernmentAgency < ActiveRecord::Base

  self.table_name = 'unidom_government_agencies'

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

  belongs_to :supervision_region, polymorphic: true

  has_many :source_party_relations, class_name: 'Unidom::Party::PartyRelation', as: :target_party
  has_many :target_party_relations, class_name: 'Unidom::Party::PartyRelation', as: :source_party

  scope :supervision_region_is, ->(region) { where supervision_region: region }

  include Unidom::Common::Concerns::ModelExtension

end
