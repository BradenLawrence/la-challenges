require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'csv'

require_relative 'models/article'

set :bind, '0.0.0.0'  # bind to all interfaces

def render_articles
  csv_rows = CSV.readlines("articles.csv", headers: true)
  articles = []
  csv_rows.each_with_index do |row, index|
    articles << Article.new(
      row["title"],
      row["description"],
      row["URL"],
      index
    )
  end
  return articles
end

get "/" do
  redirect "/articles"
end

get "/articles" do
  @articles = render_articles
  erb :articles
end

post "/articles" do
  title = params["title"]
  description = params["description"]
  url = params["url"]
  CSV.open("articles.csv", "a") do |csv|
    csv << [description, title, url]
  end
  redirect "/articles"
end

get "/articles/new" do
  erb :new
end

get "/articles/:article_id" do
  @id = params["article_id"].to_i
  articles = render_articles
  @found_article = articles.find do |article|
    article.id == @id
  end
  erb :show
end

get "/random" do
  erb :random
end

get "/random_article.json" do
  content_type :json

  articles = render_articles
  random_article = articles.sample
  @random_hash = {
    "article" => {
      "title" => random_article.title,
      "description" => random_article.description,
      "url" => random_article.url,
      "id" => random_article.id
    }
  }

  status 200
  @random_hash.to_json
end
