require "sinatra"
require "json"
require "pry" if development? || test?
require "sinatra/reloader" if development?

set :bind, '0.0.0.0'  # bind to all interfaces
set :public_folder, File.join(File.dirname(__FILE__), "public")

get "/" do
  erb :home
end

get "/api/v1/question.json" do
  status 200
  content_type :json
  questions = JSON.parse(File.read("questions.json"))
  questions["questions"].sample.to_json
end
