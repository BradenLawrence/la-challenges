class Ingredient
  attr_reader :name, :weight
  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def self.create_from_grams(name, gram_weight)
    item_name = name
    kg_weight = gram_weight / 1000

    Ingredient.new(item_name, kg_weight)
  end
end
