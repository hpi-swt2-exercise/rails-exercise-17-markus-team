require 'rails_helper'

describe 'Paper index page', type: :feature do
  it 'should render without error' do
    visit papers_path
  end

  it 'should show_data' do
    FactoryGirl.create :paper
    visit papers_path

    expect(page.text).to match(/COMPUTING MACHINERY AND INTELLIGENCE/i)
  end

  it 'should have a link to new paper' do
    FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_link('Add paper')
  end
#
#  it 'should have a link to show author' do
#    FactoryGirl.create :author
#    visit authors_path
#
#    expect(page).to have_link('Show')
#  end
#
#  it 'should have a link to edit author' do
#    FactoryGirl.create :author
#    visit authors_path
#
#    expect(page).to have_link('Edit')
#  end
#
#  it 'should have a link to destroy author' do
#    FactoryGirl.create :author
#    visit authors_path
#
#    expect(page).to have_link('Destroy')
#  end
#
#  it 'should actually remove the author' do
#    FactoryGirl.create :author
#    visit authors_path
#
#    expect(Author.find_by_first_name('Alan')).not_to be_nil
#
#    click_link('Destroy')
#
#    expect(Author.find_by_first_name('Alan')).to be_nil
#  end
end
