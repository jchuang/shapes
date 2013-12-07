class Triangle

  def initialize(side_a, side_b, side_c)
    if side_a < 0 || side_b < 0 || side_c < 0
      raise ArgumentError.new('Side cannot be negative')

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
