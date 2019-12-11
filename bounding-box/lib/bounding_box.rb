class BoundingBox
  attr_reader :left, :bottom, :right, :top, :width, :height

  def initialize(left, bottom, right, top)
    @left = left
    @bottom = bottom
    @right = left + right
    @top = bottom + top
    @width = right
    @height = top
  end

  def contains_point?(x, y)
    (@left..@right).include?(x) && (@bottom..@top).include?(y)
  end
end
