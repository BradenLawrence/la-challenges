require "sinatra"
require "sinatra/reloader"
require "pry"
require "csv"

set :bind, "0.0.0.0"

get "/" do
  erb :index
end


# HELPER METHODS
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
