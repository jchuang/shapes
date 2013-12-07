class Rectangle
  def initialize(base, height)
    @base = base
    @height = height
  end

  def perimeter
    (@base + @height) * 2
  end

  def area
    @base * @height
  end
end
