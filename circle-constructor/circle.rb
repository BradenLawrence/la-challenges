# class Circle
#   def initialize(radius)
#     @radius = radius
#   end
# end

class Circle
  def initialize(dimensions)
    if dimensions.has_key?(:radius)
      @radius = dimensions[:radius]
    elsif dimensions.has_key?(:diameter)
      @radius = dimensions[:diameter] / 2
    end
  end
end
