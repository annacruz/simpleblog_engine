require 'spec_helper'
require './app'
require './services'

describe "GET '/'" do

  let(:posts) {["First Post", "Second Post"]}

  before do
    get "/"
  end

  it "returns status 200" do
    last_response.should be_ok
  end

  it "should show all posts" do
    last_response.body == "First Post"
    last_response.body == "Second Post"
  end

end

