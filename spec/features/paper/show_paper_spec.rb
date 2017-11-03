require 'rails_helper'

describe "Paper detail page", type: :feature do

  it "should render without error" do
    @test_paper = FactoryGirl.create :paper
    visit paper_path(@test_paper)
  end

  it "should show_data" do
    @test_paper = FactoryGirl.create :paper
    visit paper_path(@test_paper)

    expect(page.text).to match(/alan turing/i)
  end

end
