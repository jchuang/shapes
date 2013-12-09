class Trapezoid
  # Like a triangle, a trapezoid can be uniquely defined by the length
  # of each side. Sides A and B are the parallel sides, in either order.

  # One example of an invalid trapezoid: consider the case where the
  # length of the shorter base plus both edges is less than the length
  # of the longer base.

  def initialize(side_a, side_b, side_c, side_d)
    sides = [side_a, side_b, side_c, side_d]
    product = (-side_a + side_b + side_c + side_d) *
              (side_a - side_b + side_c + side_d) *
              (side_a - side_b + side_c - side_d) *
              (side_a - side_b - side_c + side_d)

    if sides.any? { |side| side < 0 }
      raise ArgumentError, 'Side cannot be negative'

    elsif product < 0
      raise ArgumentError, 'Not a valid trapezoid'

    else
      if side_a == side_b
        @height = side_c
      else
        @height = Math.sqrt(product) / (2 * (side_b - side_a).abs)
      end
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
      @side_d = side_d
    end
  end

  def perimeter
    @side_a + @side_b + @side_c + @side_d
  end

  def area
    (@side_a + @side_b) * @height / 2
  end
end
