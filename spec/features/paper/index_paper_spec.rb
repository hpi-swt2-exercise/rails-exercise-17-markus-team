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

  it 'should have a link to show paper' do
    FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_link('Show')
  end

  it 'should have a link to edit paper' do
    FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_link('Edit')
  end

  it 'should have a link to destroy paper' do
    FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_link('Destroy')
  end

  it 'should actually remove the paper' do
    FactoryGirl.create :paper
    visit papers_path

    expect(Paper.find_by_title('COMPUTING MACHINERY AND INTELLIGENCE')).not_to be_nil

    click_link('Destroy')

    expect(Paper.find_by_title('COMPUTING MACHINERY AND INTELLIGENCE')).to be_nil
  end

  it 'should allow to filter by year' do
    paper = FactoryGirl.create :paper
    visit papers_path(year: paper.year)

    expect(page.text).to have_text(paper.title)

    visit papers_path(year: (paper.year + 1))

    expect(page.text).to_not have_text(paper.title)
  end
end
