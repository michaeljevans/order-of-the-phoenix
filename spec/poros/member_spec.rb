require 'rails_helper'

RSpec.describe Member do
  before :each do
    member_info = {
      name: 'Albus Dumbledore',
      role: 'Headmaster, Hogwarts',
      house: 'Gryffindor',
      patronus: 'Phoenix',
      orderOfThePhoenix: true
    }

    @member = Member.new(member_info)
  end

  it 'exists' do
    expect(@member).to be_a Member
  end

  it 'has attributes' do
    expect(@member.name).to eq('Albus Dumbledore')
    expect(@member.role).to eq('Headmaster, Hogwarts')
    expect(@member.house).to eq('Gryffindor')
    expect(@member.patronus).to eq('Phoenix')
    expect(@member.phoenix).to eq(true)
  end
end
