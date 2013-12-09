require 'rspec'
require_relative 'trapezoid'

describe Trapezoid do
  let (:trapezoid) { Trapezoid.new(4.0, 10.0, 5.0, 5.0) }
  let (:rectangle) { Trapezoid.new(4.0, 4.0, 3.0, 3.0) }

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

  it 'raises argument error if trapezoid cannot exist' do
    expect { Trapezoid.new(3.0, 10.0, 3.0, 3.0) }.to \
      raise_error(ArgumentError, 'Not a valid trapezoid')
  end

  it 'calculates perimeter if trapezoid is actually a rectangle' do
    expect(rectangle.perimeter).to eql(14.0)
  end

  it 'calculates area if trapezoid is actually a rectangle' do
    expect(rectangle.area).to eql(12.0)
  end
end
