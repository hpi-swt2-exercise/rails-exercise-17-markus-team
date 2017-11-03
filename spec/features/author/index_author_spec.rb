require 'rails_helper'

describe "Author detail page", type: :feature do

  it "should render withour error" do
    visit authors_path
  end

  it "should show_data" do
    FactoryGirl.create :author
    visit authors_path

    expect(page.text).to match(/alan turing/i)
  end

  it "should have a link to new author" do
    FactoryGirl.create :author
    visit authors_path

    expect(page).to have_link('Add author')
    expect(page).to have_link('Show')
  end

end
