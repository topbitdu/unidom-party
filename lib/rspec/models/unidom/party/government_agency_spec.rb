describe Unidom::Party::GovernmentAgency, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      supervision_region_id:   SecureRandom.uuid,
      supervision_region_type: 'Unidom::Party::SupervisionRegion::Mock',
      name:                    'WalMart',
      function_code:           'ZZZZ'
    }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

    it_behaves_like 'validates text', model_attributes, :name, length: 2..described_class.columns_hash['name'].limit

  end

end
