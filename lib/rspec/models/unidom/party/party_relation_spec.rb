describe Unidom::Party::PartyRelation, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    tim_attributes = { name: 'Tim' }
    tom_attributes = { name: 'Tom' }
    friendship_attributes = { linkage_code: 'FRND', priority: 1, grade: 5 }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', friendship_attributes.merge({
        source_party_id:   Unidom::Common::NULL_UUID,
        source_party_type: 'Unidom::Party::Person',
        target_party_id:   Unidom::Common::NULL_UUID,
        target_party_type: 'Unidom::Party::Person'
        #priority:          nil,
        #grade:             nil
      })

    it_behaves_like 'belongs_to', friendship_attributes.merge({ target_party_id: Unidom::Common::NULL_UUID, target_party_type: 'Unidom::Party::Person' }),
      :source_party, Unidom::Party::Person, tim_attributes
    it_behaves_like 'belongs_to', friendship_attributes.merge({ source_party_id: Unidom::Common::NULL_UUID, source_party_type: 'Unidom::Party::Person' }),
      :target_party, Unidom::Party::Person, tom_attributes

  end

end
