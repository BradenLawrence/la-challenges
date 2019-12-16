class Magical_Creature
  attr_reader :name, :magical_ability, :age
  def initialize(name, magical_ability, age = nil)
    @name = name
    @magical_ability = magical_ability
    @age = age
  end

  def ancient?
    if @age.nil?
      return true
    elsif @age >= 200
      return true
    else
      return false
    end
  end
end
