require 'rails_helper'

describe 'New Paper page', type: :feature do
  it 'should render without error' do
    visit new_paper_path
  end

  it 'should have text input for title, venue and year' do
    visit new_paper_path

    expect(page).to have_field('Title')
    expect(page).to have_field('Venue')
    expect(page).to have_field('Year')
  end

  it 'should save input' do
    visit new_paper_path
    fill_in 'paper_title', with: 'COMPUTING MACHINERY AND INTELLIGENCE'
    fill_in 'paper_venue', with: 'Mind 49: 433-460'
    fill_in 'paper_year', with: '1950'

    expect(Paper.find_by_first_name('COMPUTING MACHINERY AND INTELLIGENCE')).to be_nil

    find('input[type="submit"]').click

    expect(Paper.find_by_first_name('COMPUTING MACHINERY AND INTELLIGENCE')).not_to be_nil
  end
end
