require_relative "player"

class Team
  attr_reader :name
  attr_reader :players

  def initialize(name, players)
    # your code here
  end

  def motto
    "The #{name} are the best team ever!"
  end
end
