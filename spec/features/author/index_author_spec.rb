require 'rails_helper'

describe 'Author index page', type: :feature do
  it 'should render withour error' do
    visit authors_path
  end

  it 'should show_data' do
    FactoryGirl.create :author
    visit authors_path

    expect(page.text).to match(/alan turing/i)
  end

  it 'should have a link to new author' do
    FactoryGirl.create :author
    visit authors_path

    expect(page).to have_link('Add author')
    expect(page).to have_link('Show')
  end

  it 'should have a link to show author' do
    FactoryGirl.create :author
    visit authors_path

    expect(page).to have_link('Show')
  end

  it 'should have a link to edit author' do
    FactoryGirl.create :author
    visit authors_path

    expect(page).to have_link('Edit')
  end

  it 'should have a link to destroy author' do
    FactoryGirl.create :author
    visit authors_path

    expect(page).to have_link('Destroy')
  end

  it 'should actually remove the author' do
    FactoryGirl.create :author
    visit authors_path

    expect(Author.find_by_first_name('Alan')).not_to be_nil

    click_link('Destroy')

    expect(Author.find_by_first_name('Alan')).to be_nil
  end
end
