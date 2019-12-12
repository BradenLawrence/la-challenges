class Container
  attr_reader :dry_weight, :current_holding_weight, :maximum_holding_weight, :ingredients, :which_ingredient

  def initialize(weight, maximum_holding_weight)
    @dry_weight = weight
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @current_holding_weight = 0
    @ingredients = []
    @which_ingredient = nil
  end

  def fill_with_ingredient(ingredient)
    quantity = (@maximum_holding_weight / ingredient.weight).to_i
    @which_ingredient = ingredient.name
    quantity.times do
      @ingredients << ingredient
      @current_holding_weight += ingredient.weight
    end
    @current_holding_weight = @current_holding_weight.ceil
  end

  def weight
    @dry_weight + current_holding_weight
  end

  def how_many_ingredients
    @ingredients.size
  end
end
