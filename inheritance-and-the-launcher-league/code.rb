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
  def backstory
    "This one time on Halloween I ate 1000 pixie sticks and the sugar rush never stopped."
  end

  def powers
    "Non-chaffing running shorts"
  end

  def weakness
    "The RMV"
  end

  def speed_in_mph
    super * 1000
  end
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
    "My backstory is so dark and tragic I don't have time to get into it right now."
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
  def backstory
    "I have inherited many powers from my parent class!"
  end

  def powers
    "Throws lighting bolts"
  end

  def weakness
    "Weak ankle"
  end

  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades < SuperHero
  def backstory
    "My home planet kicked me out."
  end

  def powers
    "I'm just generally pretty okay at things."
  end

  def weakness
    "Shoresy"
  end

  def species
    "Alien"
  end

  def home
    "Venus"
  end

  def psychic?
    true
  end
end

class WaterBased < SuperHero
  def backstory
    "Bullies dunked my head in a radioactive toilet."
  end

  def powers
    "Swims with the strength of a thousand guppies"
  end

  def weakness
    "Sponges"
  end

  def home
    "Earth's Oceans"
  end

  def fans_per_thousand
    super / 100
  end

  def psychic?
    true
  end
end
