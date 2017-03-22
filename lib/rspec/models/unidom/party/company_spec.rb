describe Unidom::Party::Company, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      name: 'Tesla'
    }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes
    it_behaves_like 'Unidom::Party::Concerns::AsSourceParty',   model_attributes

    it_behaves_like 'validates text', model_attributes, :name, length: 2..described_class.columns_hash['name'].limit

  end

end
