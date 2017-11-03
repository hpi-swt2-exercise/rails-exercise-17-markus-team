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
    @alan = FactoryGirl.create :author
    visit authors_path

    click_link('Destroy')

    expect(@alan).to be_nil
  end
end
