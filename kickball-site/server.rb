require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

require_relative "models/league"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  redirect '/teams'
end

get "/teams" do
  @league = League.new
  @team_names = []
  @league.teams.each do |team|
    @team_names << team.name
  end
  erb :teams
end

# This list should link to individual team pages

get "/teams/:team_name" do
  @team_name = params["team_name"]
  erb :show
end
