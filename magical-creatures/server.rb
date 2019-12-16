require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?
require_relative "models/magical_creature"

set :bind, '0.0.0.0'  # bind to all interfaces

# The MAGICAL_CREATURES variable is an array of hashes, and can be accessed from an of your routes.
MAGICAL_CREATURES = [
  {
    name: "unicorn",
    ability: "Its horn is said to have the power to render poisoned water potable and heal sickness.",
    age: 140
  },
  {
    name: "dragon",
    ability: "Breathes fire and has a hide of scales that is near impenetrable.",
    age: 587
  },
  {
    name: "phoenix",
    ability: "When it is old and weary, its body ignites in flame and it arises anew from the ashes of its predecessor.",
    age: nil
  }
]

get "/" do
  erb :home
end

get "/creatures" do
  @creature_objects = []
  MAGICAL_CREATURES.each do |creature_data|
    @creature_objects << Magical_Creature.new(
      creature_data[:name],
      creature_data[:ability],
      creature_data[:age]
    )
  end
  erb :creatures
end

get "/creatures/:name" do
  @creature = MAGICAL_CREATURES.find do |creature|
    creature[:name] == params[:name]
  end
  erb :show
end
