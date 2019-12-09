class Circle
  def initialize(dimensions)
    if dimensions.kind_of?(Hash)
      if dimensions.has_key?(:radius)
        @radius = dimensions[:radius]
      elsif dimensions.has_key?(:diameter)
        @radius = dimensions[:diameter] / 2
      end
    elsif dimensions.kind_of?(Numeric)
      @radius = dimensions
    end
  end
end
