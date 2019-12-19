require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'pry'

require_relative "../server"

Capybara.app = Sinatra::Application
