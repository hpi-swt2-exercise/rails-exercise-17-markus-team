require 'rspec'

describe 'Author Object' do

  it 'should create Alan Turing' do
    author = Author.new('Alan', 'Turing', 'somePage')
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Alan')
    expect(author.homepage).to eq('Alan')
    true.should == false
  end
end