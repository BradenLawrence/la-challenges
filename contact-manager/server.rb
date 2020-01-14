require 'sinatra'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

get '/' do
  redirect '/contacts/'
end

get '/contacts' do
  @contacts = Contact.all
  erb :index
end

get '/contacts/:id' do
  @show_contact = Contact.find(params["id"])
  erb :show
end

get 'contacts/page/:page_num' do
  
end
