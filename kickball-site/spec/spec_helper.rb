require "rspec"
require "capybara"
require "capybara/rspec"

require_relative "../server"
require_relative "../models/team"
require_relative "../models/player"
require_relative "../models/league"

Capybara.app = Sinatra::Application
