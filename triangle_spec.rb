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
end
