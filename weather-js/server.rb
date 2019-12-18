# A "Proxy API" for accessing DarkSky
require "sinatra"
require "net/http"

require "sinatra/reloader" if development?
require "pry" if development? || test?

set :bind, '0.0.0.0'  # bind to all interfaces

DARK_SKY_API_KEY = "2463e9d833037e62a0d2facda247c163"

get "/" do
  File.read("public/index.html")
end

get "/api/v1/forecast/:latitude,:longitude" do |latitude, longitude|
  uri = URI("https://api.darksky.net/forecast/#{DARK_SKY_API_KEY}/#{latitude},#{longitude}")
  return Net::HTTP.get(uri)
end
