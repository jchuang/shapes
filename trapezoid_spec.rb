require 'rspec'
require_relative 'trapezoid'

describe Trapezoid do
  let (:trapezoid) { Trapezoid.new(4.0, 10.0, 5.0, 5.0) }

  it 'calculates perimeter given length of each side' do
    expect(trapezoid.perimeter).to eql(24.0)
  end

  it 'calculates area given length of each side' do
    expect(trapezoid.area).to eql(28.0)
  end

  it 'raises argument error if any side is negative' do
    expect { Trapezoid.new(-4.0, 10.0, 5.0, 5.0) }.to \
      raise_error(ArgumentError, 'Side cannot be negative')
    expect { Trapezoid.new(4.0, -10.0, 5.0, 5.0) }.to \
      raise_error(ArgumentError, 'Side cannot be negative')
    expect { Trapezoid.new(4.0, 10.0, -5.0, 5.0) }.to \
      raise_error(ArgumentError, 'Side cannot be negative')
    expect { Trapezoid.new(4.0, 10.0, 5.0, -5.0) }.to \
      raise_error(ArgumentError, 'Side cannot be negative')
  end
end
