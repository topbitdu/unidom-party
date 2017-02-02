describe Unidom::Party::Gender, type: :type do

  before :each do
  end

  after :each do
  end

  it_behaves_like 'ProgneTapera::EnumConfig', 4, [
    { code: '0', name: 'not_known',      localized_name: '未知' },
    { code: '1', name: 'male',           localized_name: '男性' },
    { code: '2', name: 'female',         localized_name: '女性' },
    { code: '9', name: 'not_applicable', localized_name: '保密' } ]

end
