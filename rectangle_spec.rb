require 'rspec'
require_relative 'rectangle'

describe Rectangle do
  let (:rectangle) { Rectangle.new(2.0, 3.0) }

  it 'calculates perimeter given base and height' do
    expect(rectangle.perimeter).to eql(10.0)
  end

  it 'calculates area given base and height' do
    expect(rectangle.area).to eql(6.0)
  end

  it 'raises argument error if base or height is negative' do
    expect { Rectangle.new(-2.0, -3.0) }.to raise_error(ArgumentError,
      'Base cannot be negative')
    expect { Rectangle.new(2.0, -3.0) }.to raise_error(ArgumentError,
      'Height cannot be negative')
  end
end
