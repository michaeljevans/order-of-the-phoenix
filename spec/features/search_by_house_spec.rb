require 'rails_helper'

RSpec.describe 'When I select a house from the dropdown menu,' do
  it 'I am redirected to /search where I see relevant infomration' do
    visit '/'

    page.select 'Gryffindor', from: :house

    click_on 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_css('.members')

    expect(page).to have_css('.member', count: 21)

    within first('.member') do
      expect(page).to have_content('Name: ')
      expect(page).to have_content('House: ')
    end
  end
end
