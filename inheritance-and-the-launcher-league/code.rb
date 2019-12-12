class SuperHero
  attr_reader :public_identity, :secret_identity


  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

end

class Speedster < SuperHero
end

class Brawler < SuperHero
  def backstory
    "I went to the school of Hard Knocks."
  end

  def powers
    "Really big fists."
  end

  def health
    super * 20
  end

  def weakness
    "Cheesecake"
  end
end

class Detective < SuperHero
  def backstory
    "My backstory is so dark and tragic I don't have time to talk about it right now."
  end

  def powers
    "Psychic saxaphone"
  end

  def speed_in_mph
    super / 6
  end

  def weakness
    @secret_identity
  end
end

class Demigod < SuperHero
end

class JackOfAllTrades < SuperHero
end

class WaterBased < SuperHero
end
