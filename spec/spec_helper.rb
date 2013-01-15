ENV["RACK_ENV"] = "test"
require "rack/test"

RSpec.configure do |config|
  module Helpers
    include Rack::Test::Methods

    def app
      Sinatra::Application
    end
  end

  config.include Helpers
  config.color_enabled = true
  config.mock_framework = :rspec
  config.full_backtrace = true
end
