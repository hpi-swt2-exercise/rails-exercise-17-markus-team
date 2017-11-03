require 'rails_helper'

describe 'Paper Object', type: :model do

  it 'should create test paper' do
    paper = Paper.new(title: 'COMPUTING MACHINERY AND INTELLIGENCE', venue: 'Mind 49: 433-460', year:1950)
    expect(paper.title).to eq('COMPUTING MACHINERY AND INTELLIGENCE')
    expect(paper.venue).to eq('Mind 49: 433-460')
    expect(paper.year).to eq(1950)
  end


  it 'should not be able to create an paper without title' do
    paper = Paper.new(title: '', venue: 'Mind 49: 433-460', year:1950)
    expect(paper).not_to be_valid
  end


  it 'should not be able to create an paper without venue' do
    paper = Paper.new(title: 'COMPUTING MACHINERY AND INTELLIGENCE', venue: '', year:1950)
    expect(paper).not_to be_valid
  end


  it 'should not be able to create an paper without year' do
    paper = Paper.new(title: 'COMPUTING MACHINERY AND INTELLIGENCE', venue: 'Mind 49: 433-460')
    expect(paper).not_to be_valid
  end


  it 'should not be able to create an paper with non-integer year' do
    paper = Paper.new(title: 'COMPUTING MACHINERY AND INTELLIGENCE', venue: 'Mind 49: 433-460', year: 'nineteen-fifty')
    expect(paper).not_to be_valid
  end

  it 'should have a list of authors' do
    paper = Paper.new(title: 'COMPUTING MACHINERY AND INTELLIGENCE', venue: 'Mind 49: 433-460', year: 'nineteen-fifty')
    expect(paper.authors).to eq([])
  end
end