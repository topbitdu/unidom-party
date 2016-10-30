# Party Relation 是参与者关系。

class Unidom::Party::PartyRelation < Unidom::Party::ApplicationRecord

  self.table_name = 'unidom_party_relations'

  include Unidom::Common::Concerns::ModelExtension

  validates :grade,    presence: true, numericality: { integer_only: true }
  validates :priority, presence: true, numericality: { integer_only: true }

  belongs_to :source_party, polymorphic: true
  belongs_to :target_party, polymorphic: true

  scope :source_party_is, ->(source_party) { where source_party: source_party }
  scope :target_party_is, ->(target_party) { where target_party: target_party }

  def self.relate!(source_party: nil, target_party: nil, linkage_code: 'FRND', grade: 0, opened_at: Time.now, priority: 0, attributes: {})
    relation = source_party_is(source_party).target_party_is(target_party).linkage_coded_as(linkage_code).first_or_initialize grade: grade, priority: priority, opened_at: opened_at
    relation.assign_attributes attributes
    relation.save!
    relation
  end

end
