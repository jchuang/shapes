require 'rspec'
require_relative 'square'

describe Square do
  let (:square) { Square.new(10.0) }

  it 'calculates perimeter given length of side' do
    expect(square.perimeter).to eq(40.0)
  end

  it 'calculates area given length of side' do
    expect(square.area).to eq(100.0)
  end

  it 'raises argument error if length is negative' do
    expect { Square.new(-2.0) } .to raise_error(ArgumentError,
      'Side cannot be negative')
  end
end
