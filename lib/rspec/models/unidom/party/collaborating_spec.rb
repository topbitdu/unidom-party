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

    it_behaves_like 'validates text', model_attributes, :name, length: 2..described_class.columns_hash['name'].limit

    company_attributes           = { name: 'Tesla'   }
    government_agency_attributes = { name: 'CD Gov'  }
    person_attributes            = { name: 'Tim'     }
    shop_attributes              = { name: 'WalMart' }

    it_behaves_like 'belongs_to', model_attributes, :collaborator, Unidom::Party::Company,          company_attributes
    it_behaves_like 'belongs_to', model_attributes, :collaborator, Unidom::Party::GovernmentAgency, government_agency_attributes
    it_behaves_like 'belongs_to', model_attributes, :collaborator, Unidom::Party::Person,           person_attributes
    it_behaves_like 'belongs_to', model_attributes, :collaborator, Unidom::Party::Shop,             shop_attributes

  end

end
