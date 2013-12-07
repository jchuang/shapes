require 'rspec'
require_relative 'square'

describe Square do
  it 'calculates the perimeter given length of side' do
    square = Square.new(10.0)
    expect(square.perimeter).to eq(40.0)
  end

  it 'calculates the area given length of side' do
    square = Square.new(10.0)
    expect(square.area).to eq(100.0)
  end
end
