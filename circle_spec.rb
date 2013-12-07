require 'rspec'
require_relative 'circle'

describe Circle do
  let (:circle) { Circle.new(3.0) }

  it 'calculates perimeter given the radius' do
    expect(circle.perimeter).to eql(2 * Math::PI * circle.radius)
  end

  it 'calculates area given the radius' do
    expect(circle.area).to eql(Math::PI * circle.radius**2)
  end
end
