class Trapezoid
  # Like a triangle, a trapezoid can be uniquely defined by the length
  # of each side. Sides A and B are the parallel sides, in either order.

  def initialize(side_a, side_b, side_c, side_d)
    if side_a < 0 || side_b < 0 || side_c < 0 || side_d < 0
      raise ArgumentError, 'Side cannot be negative'

    else
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
    # similar to Heron's Formula for a triangle, via Wikipedia

    sp = perimeter / 2
    product = (sp - @side_a) * (sp - @side_b) * (sp - @side_a - @side_c) * \
      (sp - @side_a - @side_d)
    (@side_a + @side_b) * Math.sqrt(product) / (@side_a - @side_b).abs
  end
end
