shared_examples 'Unidom::Party::Concerns::AsSourceParty' do |model_attributes|

  describe '#target_party_relations' do

    target_person_1 = Unidom::Party::Person.create! name: 'Tim'
    target_person_2 = Unidom::Party::Person.create! name: 'Tom'

    target_party_relation_1_attributes = { target_party: target_person_1 }
    target_party_relation_2_attributes = { target_party: target_person_2 }

    it_behaves_like 'has_many', model_attributes, :target_party_relations, Unidom::Party::PartyRelation, [ target_party_relation_1_attributes, target_party_relation_2_attributes ]

  end

  # relate!
  # relate?

end
