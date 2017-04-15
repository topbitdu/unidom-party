shared_examples 'Unidom::Party::Concerns::AsTargetParty' do |model_attributes, source_party, linkage_code|

  context do

    source_person_1 = Unidom::Party::Person.create! name: 'Tim'
    source_person_2 = Unidom::Party::Person.create! name: 'Tom'

    source_party_relation_1_attributes = { source_party: source_person_1 }
    source_party_relation_2_attributes = { source_party: source_person_2 }

    it_behaves_like 'has_many', model_attributes, :source_party_relations, Unidom::Party::PartyRelation, [ source_party_relation_1_attributes, source_party_relation_2_attributes ]

    model = described_class.create! model_attributes
    it_behaves_like 'assert_present!', model, :is_related!, [ { to: source_party, due_to: linkage_code, at: Time.now } ], [ :to, :due_to, :at ]
    it_behaves_like 'assert_present!', model, :is_related?, [ { to: source_party, due_to: linkage_code, at: Time.now } ], [ :to, :due_to, :at ]

  end

end
