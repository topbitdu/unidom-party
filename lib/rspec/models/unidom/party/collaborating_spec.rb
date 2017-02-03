describe Unidom::Party::Collaborating, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      collaboration_id:   SecureRandom.uuid,
      collaboration_type: 'Unidom::Party::Collaboration::Mock',
      collaborator_id:    SecureRandom.uuid,
      collaborator_type:  'Unidom::Party::Collaborator::Mock',
      role_code:          'ZZZZ',
      name:               'Attention',
      priority:           3,
      grade:              5
    }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

  end

end
