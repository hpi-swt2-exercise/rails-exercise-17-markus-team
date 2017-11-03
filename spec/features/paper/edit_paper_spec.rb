require 'rails_helper'

describe "Edit paper page", type: :feature do

  it "should render without error" do
    FactoryGirl.create :paper
    visit edit_paper_path(id: "1")
  end

  it "should edit without error" do
    @test = FactoryGirl.create :paper
    visit edit_paper_path(@test)
    fill_in "paper_title", :with => 'COMPUTING MACHINERY AND INTELLIGENCE'

    find('input[type="submit"]').click
  end

end
