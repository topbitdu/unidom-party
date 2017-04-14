shared_examples 'Unidom::Party::Concerns::AsSourceParty' do |model_attributes, target_party, linkage_code|

  context do

    target_person_1 = Unidom::Party::Person.create! name: 'Tim'
    target_person_2 = Unidom::Party::Person.create! name: 'Tom'

    target_party_relation_1_attributes = { target_party: target_person_1 }
    target_party_relation_2_attributes = { target_party: target_person_2 }

    it_behaves_like 'has_many', model_attributes, :target_party_relations, Unidom::Party::PartyRelation, [ target_party_relation_1_attributes, target_party_relation_2_attributes ]

    model = described_class.create! model_attributes
    it_behaves_like 'assert_present!', model, :relate!, [ { to: target_party, due_to: linkage_code, at: Time.now } ], [ :to, :due_to, :at ]
    it_behaves_like 'assert_present!', model, :relate?, [ { to: target_party, due_to: linkage_code, at: Time.now } ], [ :to, :due_to, :at ]

  end

end
