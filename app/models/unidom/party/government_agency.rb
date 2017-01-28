##
# Government Agency 是政府机构。
# function_code 是行政职能代码： PLST: Police Station 公安局, PLSS: Police Sub-Station 派出所

class Unidom::Party::GovernmentAgency < Unidom::Party::ApplicationRecord

  self.table_name = 'unidom_government_agencies'

  include Unidom::Common::Concerns::ModelExtension
  include Unidom::Party::Concerns::AsSourceParty
  include Unidom::Party::Concerns::AsTargetParty

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

  belongs_to :supervision_region, polymorphic: true

  scope :supervision_region_is, ->(region) { where supervision_region: region }

end unless Unidom::Common::Neglection.namespace_neglected? 'Unidom::Party::GovernmentAgency'
