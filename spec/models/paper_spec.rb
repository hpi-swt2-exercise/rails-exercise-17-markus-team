require 'rails_helper'

describe 'Paper Object', type: :model do

  it 'should create test paper' do
    paper = Paper.new(title: 'COMPUTING MACHINERY AND INTELLIGENCE', venue: 'Mind 49: 433-460', year:1950)
    expect(paper.title).to eq('COMPUTING MACHINERY AND INTELLIGENCE')
    expect(paper.venue).to eq('Mind 49: 433-460')
    expect(paper.year).to eq(1950)
  end

end