require 'rails_helper'

RSpec.describe HouseMembersFacade do
  it 'exists and has attributes' do
    house = 'Gryffindor'
    facade = HouseMembersFacade.new(house)

    expect(facade).to be_a HouseMembersFacade
    expect(facade.house).to eq('Gryffindor')
    expect(facade.members.length).to eq(21)
  end
end
