# Company 是公司。

class Unidom::Party::Company < ActiveRecord::Base

  self.table_name = 'unidom_companies'

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

  has_many :source_party_relations, class_name: 'Unidom::Party::PartyRelation', as: :target_party
  has_many :target_party_relations, class_name: 'Unidom::Party::PartyRelation', as: :source_party

  include Unidom::Common::Concerns::ModelExtension

end
