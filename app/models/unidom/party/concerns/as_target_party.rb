module Unidom::Party::Concerns::AsTargetParty

  extend ActiveSupport::Concern

  included do |includer|

    has_many :source_party_relations, class_name: 'Unidom::Party::PartyRelation', as: :target_party

    def is_related!(to: nil, due_to: nil, at: Time.now)
      source_party_relations.create! source_party: to, linkage_code: due_to, opened_at: at
    end

    #def is_related?(to: nil, due_to: nil, at: Time.now)
    #  source_party_relations.source_party_is(to).linkage_coded_as(due_to).valid_at(now: at).alive.exists?
    #end

  end

  module ClassMethods
  end

end
