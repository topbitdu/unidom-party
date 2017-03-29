shared_examples 'Unidom::Party::Concerns::AsTargetParty' do |model_attributes|

  context do

    source_person_1 = Unidom::Party::Person.create! name: 'Tim'
    source_person_2 = Unidom::Party::Person.create! name: 'Tom'

    source_party_relation_1_attributes = { source_party: source_person_1 }
    source_party_relation_2_attributes = { source_party: source_person_2 }

    it_behaves_like 'has_many', model_attributes, :source_party_relations, Unidom::Party::PartyRelation, [ source_party_relation_1_attributes, source_party_relation_2_attributes ]

  end

end
