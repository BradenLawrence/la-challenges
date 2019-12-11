class Container
  attr_reader :weight, :maximum_holding_weight

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
  end
end
