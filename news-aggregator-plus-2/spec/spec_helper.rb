require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'pry'

require_relative "../server"

Capybara.app = Sinatra::Application

RSpec.configure do |config|
  before(:each) do
    CSV.open(csv_file, "a", headers: true) do |csv|
      csv << ["Test Title", "Test Description", "https://www.testurl.pizza"]
      csv << ["A Fake Title", "A Fake Description", "https://www.afakeurl.pizza"]
    end
  end

  after(:each) do
    reset_csv
  end
end
