class Magical_Creature
  attr_reader :name, :magical_ability, :age
  def initialize(name, magical_ability, age = nil)
    @name = name
    @magical_ability = magical_ability
    @age = age
  end

  def ancient?
    @age >= 200 || @age.nil?
  end
end
