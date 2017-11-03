require 'rails_helper'

describe "Edit author page", type: :feature do

  it "should render without error" do
    FactoryGirl.create :author
    visit edit_author_path(id: "1")
  end

  it "should edit without error" do
    @alan = FactoryGirl.create :author
    visit edit_author_path(@alan)
    fill_in "author_first_name", :with => 'Alan Mathison'

    find('input[type="submit"]').click
  end

end
