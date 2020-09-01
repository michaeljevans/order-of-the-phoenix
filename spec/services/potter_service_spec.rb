require 'rails_helper'

RSpec.describe do
  it 'returns a list of house members' do
    house = 'Gryffindor'
    service = PotterService.new
    members = service.search_by(house)

    expect(members.class).to eq(Array)
    expect(members[0]).to have_key(:name)
    expect(members[0]).to have_key(:role)
    expect(members[0]).to have_key(:house)
    expect(members[6]).to have_key(:patronus)
    expect(members[0]).to have_key(:orderOfThePhoenix)
  end
end
