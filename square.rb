class Square
  def initialize(side)
    if side < 0
      raise ArgumentError, 'Side cannot be negative'
    else
      @side = side
    end
  end

  def perimeter
    @side * 4
  end

  def area
    @side**2
  end
end
