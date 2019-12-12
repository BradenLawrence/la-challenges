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
    x_start = @x - half
    y_start = @y - half
    x_end = @x + half
    y_end = @y + half

    contains_x = (x_start..x_end).include?(point_x)
    contains_y = (y_start..y_end).include?(point_y)

    if contains_x && contains_y
      contained = true
    end
    return contained
  end
end
