require 'spec_helper'
require './app.rb'
require './services'

describe "GET '/'" do
    before do
      get "/"
    end

  it "returns status 200" do
    last_response.should be_ok
  end
end

