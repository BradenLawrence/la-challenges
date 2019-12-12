class Square
  attr_reader :side, :x, :y

  def initialize(side, x = 0, y = 0)
    @side = side
    @x = x
    @y = y
  end

  def length
    @side
  end

  def width
    @side
  end

  def diameter
    Math::sqrt(@side * @side * 2)
  end

  def perimeter
    @side * 4
  end

  def area
    @side * @side
  end

  def contains_point?(point_x, point_y)
    contained = false
    half = @side / 2.to_f
    contains_x = ((@x-half)..(@x+half)).include?(point_x)
    contains_y = ((@y-half)..(@y+half)).include?(point_y)
    if contains_x && contains_y
      contained = true
    end
    return contained
  end
end
