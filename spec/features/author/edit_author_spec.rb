require 'rails_helper'

describe "Edit author page", type: :feature do
  
  it "should render withour error" do
    FactoryGirl.create :author
    visit edit_author_path(id: "1")
  end

end
