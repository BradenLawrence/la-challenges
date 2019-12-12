class BoundingArea
  attr_reader :bounding_boxes

  def initialize(bounding_boxes)
    @bounding_boxes = bounding_boxes
  end

  def boxes_contain_point?(x, y)
    @bounding_boxes.each do |box|
      if box.contains_point?(x, y)
        return true
      end
    end
    return false
  end

end
