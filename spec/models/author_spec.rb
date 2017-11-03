require 'rails_helper'

describe 'Author Object', type: :model do

  it 'should create Alan Turing' do
    author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage:'somePage')
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('somePage')
    expect(author.name).to eq('Alan Turing')
  end
end