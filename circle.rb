class Circle

  def initialize(radius)
    if radius < 0
      raise ArgumentError.new('Radius cannot be negative')
    else
      @radius = radius
    end
  end

  def perimeter
    2 * Math::PI * @radius
  end

  def area
    Math::PI * @radius**2
  end
end
