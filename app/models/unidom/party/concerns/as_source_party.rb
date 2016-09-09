module Unidom::Party::Concerns::AsSourceParty

  extend ActiveSupport::Concern

  included do |includer|

    has_many :target_party_relations, class_name: 'Unidom::Party::PartyRelation', as: :source_party

  end

  module ClassMethods
  end

end
