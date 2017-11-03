require 'rails_helper'

describe "Author detail page", type: :feature do

  it "should render withour error" do
    @alan = FactoryGirl.create :author
    visit author_path(@alan)
  end

  it "should show_data" do
    @alan = FactoryGirl.create :author
    visit author_path(@alan)

    expect(page.text).to match(/first name: alan/i)
  end

end
