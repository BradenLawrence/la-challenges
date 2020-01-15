require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require "sinatra/reloader" if development?
require "pry" if development? || test?
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

get '/' do
  redirect '/articles'
end

get '/articles' do
  @articles = Article.all
  erb :'articles/index'
end

get "/articles/new" do
  erb :'articles/new'
end

post "/articles/new" do
  @title = params[:title]
  @description = params[:description]
  @article = Article.new(params)

  if @article.save
    flash[:notice] = 'Article was successfully created.'
    redirect  "/articles"
  else
    flash.now[:error] = 'You messed up the form. Please fill out all fields correctly'
    erb :'articles/new'
  end
end
