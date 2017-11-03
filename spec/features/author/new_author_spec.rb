require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit new_author_path
  end

  it "should have text input for first name, last name, and homepage" do
    visit new_author_path

    expect(page).to have_field('First name')
    expect(page).to have_field('Last name')
    expect(page).to have_field('Homepage')
  end

  it "should save input" do
    visit new_author_path
    fill_in "author_first_name", :with => 'Alan'
    fill_in "author_last_name", :with => 'Turing'
    fill_in "author_homepage", :with => 'http://wikipedia.org/Alan_Turing'

    find('input[type="submit"]').click

    expect(Author.find_by_first_name('Alan')).not_to be_nil
  end

  it "should show error if last name is blank" do
    visit new_author_path
    fill_in "author_first_name", :with => 'Alan'
    fill_in "author_last_name", :with => ''
    fill_in "author_homepage", :with => 'http://wikipedia.org/Alan_Turing'

    find('input[type="submit"]').click

    expect(page).to have_text('Last name can\'t be blank')
  end

end
