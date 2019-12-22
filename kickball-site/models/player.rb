class Player
  attr_reader :name, :position
  
  def initialize(name, player_data)
    @name = name
    @position = player_data
  end
end
