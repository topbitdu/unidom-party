describe Unidom::Party::Shop, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      name: 'WalMart'
    }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

  end

end
