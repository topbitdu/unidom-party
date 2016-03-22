# Party Relation 是参与者关系。

class Unidom::Party::PartyRelation < ActiveRecord::Base

  self.table_name = 'unidom_party_relations'

  validates :grade,    presence: true, numericality: { integer_only: true }
  validates :priority, presence: true, numericality: { integer_only: true }

  belongs_to :source_party, polymorphic: true
  belongs_to :target_party, polymorphic: true

  include Unidom::Common::Concerns::ModelExtension

end
