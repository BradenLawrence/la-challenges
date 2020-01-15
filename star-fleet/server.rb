require 'sinatra'
require 'sinatra/flash'
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
  payload = Ship.new(params)
  if payload.valid?
    payload.save
    @new_ship = Ship.find_by(name: params["name"])
    flash[:notice] = "Your new starship was created successfully!"
    redirect "/starships/#{@new_ship.id}"
  else
    flash.now[:error] = "There was an error building your new starship. Please review your form and resubmit."
    @name = params["name"]
    @ship_class = params["ship_class"]
    @location = params["location"]
    erb :'starships/new'
  end
end

get '/starships/new' do
  @name = ""
  @ship_class = ""
  @location = ""
  erb :'starships/new'
end

get '/starships/:id' do
  @ship = Ship.find(params["id"])
  erb :'starships/show'
end
