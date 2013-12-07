require 'rspec'
require_relative 'circle'

describe Circle do
  it 'calculates the perimeter given the radius' do
    circle = Circle.new(3.0)
    expect(circle.perimeter).to eql(2 * Math::PI * circle.radius)
  end

  it 'calculates the area given the radius' do
    circle = Circle.new(3.0)
    expect(circle.area).to eql(Math::PI * circle.radius**2)
  end
end
