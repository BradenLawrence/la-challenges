require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'csv'

require_relative 'models/article'

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  redirect "/articles"
end

get "/articles" do
  csv_rows = CSV.readlines("articles.csv", headers: true)
  @articles = []
  csv_rows.each_with_index do |row, index|
    @articles << Article.new(
      row["title"],
      row["description"],
      row["URL"],
      index
    )
  end
  erb :articles
end

get "/articles/:name" do

end
