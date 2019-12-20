require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'pry'

require_relative "../server"
require_relative "../models/article"

Capybara.app = Sinatra::Application
