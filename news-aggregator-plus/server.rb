require 'sinatra'
require 'sinatra/reloader'
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  redirect "/articles"
end

get "/articles" do
  erb :articles
end
