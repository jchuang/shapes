require 'rspec'
require_relative 'triangle'

describe Triangle do
  let (:triangle) { Triangle.new(5.0, 5.0, 6.0) }

  it 'calculates perimeter given length of each side' do
    expect(triangle.perimeter).to eql(16.0)
  end

  it 'calculates area given length of each side' do
    expect(triangle.area).to eql(12.0)
  end

  it 'raises argument error if any side is negative' do
    expect { Triangle.new(-5.0, 5.0, 6.0) }.to raise_error(ArgumentError,
      'Side cannot be negative')
    expect { Triangle.new(5.0, -5.0, 6.0) }.to raise_error(ArgumentError,
      'Side cannot be negative')
    expect { Triangle.new(5.0, 5.0, -6.0) }.to raise_error(ArgumentError,
      'Side cannot be negative')
  end
end
