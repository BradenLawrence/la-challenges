require_relative "player"

class Team
  attr_reader :name, :players

  def initialize(name, players)
    @name = name
    @players = players
  end

  def motto
    "The #{name} are the best team ever!"
  end
end
