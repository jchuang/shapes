class Rectangle

  def initialize(base, height)
    if base < 0
      raise ArgumentError.new('Base cannot be negative')
    elsif height < 0
      raise ArgumentError.new('Height cannot be negative')

    else
      @base = base
      @height = height
    end
  end

  def perimeter
    (@base + @height) * 2
  end

  def area
    @base * @height
  end
end
