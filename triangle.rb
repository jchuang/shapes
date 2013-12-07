class Triangle
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def perimeter
    @side_a + @side_b + @side_c
  end

  def area
    # Heron's Formula for area of triangle
    sp = perimeter / 2
    product = sp * (sp - @side_a) * (sp - @side_b) * (sp - @side_c)
    Math.sqrt(product)
  end
end
