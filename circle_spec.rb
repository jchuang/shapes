require 'rspec'
require_relative 'circle'

describe Circle do
  let (:circle) { Circle.new(3.0) }

  it 'calculates perimeter given the radius' do
    expect(circle.perimeter).to eql(2 * Math::PI * 3.0)
  end

  it 'calculates area given the radius' do
    expect(circle.area).to eql(Math::PI * 3.0**2)
  end

  it 'raises argument error if radius is negative' do
    expect { Circle.new(-2.0) } .to raise_error(ArgumentError,
      'Radius cannot be negative')
  end
end
