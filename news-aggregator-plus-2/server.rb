require "sinatra"
require "sinatra/reloader"
require "pry"
require "csv"

set :bind, "0.0.0.0"

get "/" do
  redirect "/articles"
end

get "/articles" do
  @articles = get_articles
  erb :articles
end

post "/articles" do
  CSV.open(csv_file, "a", headers: true) do |csv|
    csv << [
      params["title"],
      params["description"],
      params["url"]
    ]
  end
  redirect "/articles"
end

get "/articles/new" do
  erb :new
end

get "/articles/:id" do
  articles = get_articles
  @show_article = articles.find do |article|
    article["id"] == params["id"].to_i
  end
  erb :show
end


# HELPER METHODS
def get_articles
  articles = []
  CSV.foreach(csv_file, headers: true) do |row|
    articles << {
      "title" => row["title"],
      "description" => row["description"],
      "url" => row["url"],
      "id" => articles.count
    }
  end
  return articles
end

def csv_file
  if ENV["RACK_ENV"] == "test"
    "data/articles_test.csv"
  else
    "data/articles.csv"
  end
end

def reset_csv
  CSV.open(csv_file, "w", headers: true) do |csv|
    csv << ["title", "description", "url"]
  end
end
