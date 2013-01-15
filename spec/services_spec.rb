require 'spec_helper'
require './services'
require 'rspec'

describe "Services" do
  let(:dir) {double(:dir, :entries => ["array", "com", "strings"])}
  let(:dir2) {double(:dir, :entries => [".", "..", ".bash"])}

  it "should work with a directory with files" do
    expect(Services.get_posts(dir)).to be_eql(["array", "com", "strings"])
  end

  it "shouldn return . files" do
    expect(Services.get_posts(dir2)).to be_empty
  end

end
