require 'spec_helper'
# require './app.rb'

describe "App" do
  context "/" do
    yamlfile = mock('file')
    directory = mock('dir').as_null_object
    Dir.should_receive(:foreach).with("yamlfile").and_yield(post)
    [].should_receive(:push).with(post)
  end
end
