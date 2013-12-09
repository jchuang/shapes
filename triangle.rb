class Triangle
  def initialize(side_a, side_b, side_c)
    sides = [side_a, side_b, side_c]
    sorted_sides = sides.sort

    if sides.any? { |side| side < 0 }
      raise ArgumentError, 'Side cannot be negative'

    # by triangle inequality
    elsif sorted_sides[2] >= sorted_sides[0] + sorted_sides[1]
      raise ArgumentError, 'Not a valid triangle'

    else
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
    end
  end

  def perimeter
    @side_a + @side_b + @side_c
  end

  def area
    # Heron's Formula for area of triangle, via Wikipedia
    sp = perimeter / 2
    product = sp * (sp - @side_a) * (sp - @side_b) * (sp - @side_c)
    Math.sqrt(product)
  end
end
