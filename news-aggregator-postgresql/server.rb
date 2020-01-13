require "sinatra"
require "pg"
require 'csv'
require "pry" if development? || test?
require "sinatra/reloader" if development?
require_relative "./app/models/article.rb"

set :bind, '0.0.0.0'  # bind to all interfaces
set :views, File.join(File.dirname(__FILE__), "app", "views")

configure :development do
  set :db_config, { dbname: "news_aggregator_development" }
end

configure :test do
  set :db_config, { dbname: "news_aggregator_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

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
  @articles = db_connection do |connection|
    connection.exec("SELECT * FROM articles").to_a
  end
  erb :articles
end

post "/articles" do
  title = params["title"]
  description = params["description"]
  url = params["url"]
  if title == "" || description == "" || url == ""
    @error = "Fields must not be blank"
    redirect "/articles/new"
  else
    CSV.open("articles.csv", "a") do |csv|
      csv << [description, title, url]
    end
    redirect "/articles"
  end
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
