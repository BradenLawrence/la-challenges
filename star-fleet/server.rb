require 'sinatra'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

# Any classes you add to the models folder will automatically be made available in this server file

get '/' do
  redirect '/starships'
end

get '/starships' do
  @ships = Ship.all
  erb :'starships/index'
end

post '/starships' do
  Ship.create(params)
  @new_ship = Ship.find_by(name: params["name"])
  @success_message = "Your new starship was created successfully!"
  redirect "/starships/#{@new_ship.id}"
end

get '/starships/new' do
  erb :'starships/new'
end

get '/starships/:id' do
  @ship = Ship.find(params["id"])
  erb :'starships/show'
end
