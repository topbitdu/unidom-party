module Unidom::Party::Concerns::AsTargetParty

  extend ActiveSupport::Concern

  included do |includer|

    has_many :source_party_relations, class_name: 'Unidom::Party::PartyRelation', as: :target_party

  end

  module ClassMethods
  end

end
