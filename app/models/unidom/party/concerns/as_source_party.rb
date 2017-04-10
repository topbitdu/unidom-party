module Unidom::Party::Concerns::AsSourceParty

  extend  ActiveSupport::Concern
  include Unidom::Common::Concerns::ArgumentValidation

  included do |includer|

    has_many :target_party_relations, class_name: 'Unidom::Party::PartyRelation', as: :source_party

    def relate!(to: nil, due_to: nil, at: Time.now)

      assert_present! :to,     to
      assert_present! :due_to, due_to
      assert_present! :at,     at

      target_party_relations.create! target_party: to, linkage_code: due_to, opened_at: at

    end

    def relate?(to: nil, due_to: nil, at: Time.now)

      assert_present! :to,     to
      assert_present! :due_to, due_to
      assert_present! :at,     at

      target_party_relations.target_party_is(to).linkage_coded_as(due_to).valid_at(now: at).alive.exists?

    end

  end

  module ClassMethods
  end

end
