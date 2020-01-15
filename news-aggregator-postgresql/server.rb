require "sinatra"
require "pg"
require "pry" if development? || test?
require "sinatra/reloader" if development?
require_relative "./app/models/article"

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

get "/" do
  redirect "/articles"
end

get "/articles" do
  @articles = Article.all
  erb :articles
end

post "/articles" do
  Article.create(params)
  redirect "/articles"
end

get "/articles/new" do
  erb :new
end

get "/articles/:article_id" do
  # @id = params["article_id"].to_i
  # @found_article = db_connection do |connection|
  #   connection.exec("SELECT * FROM articles WHERE (id=#{@id});").to_a.first
  # end
  @found_article = Article.find(params["article_id"].to_i)
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
