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
    @new_ship = payload.save
    flash[:notice] = "Your new starship was created successfully!"
    redirect "/starships/#{@new_ship.id}"
  else
    flash.now[:error] = @new_ship.errors.full_messages.to_sentence
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

get '/crew-members' do
  @crew_members = CrewMember.all.order(:last_name)
  erb :'crew_members/index'
end

post '/crew-members' do
  payload = CrewMember.new(params)
  if payload.valid?
    payload.save
    flash[:notice] = "Successfully added new crew member!"
    redirect '/crew-members'
  else
    binding.pry
    flash.now[:error] = payload.errors.full_messages.to_sentence
    @first_name = params["first_name"]
    @last_name = params["last_name"]
    @division = params["division"]
    @ship = Ship.find(params["ship_id"])
    erb :'starships/show'
  end
end
