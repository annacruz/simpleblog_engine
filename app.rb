require 'sinatra'
require 'sinatra/reloader' if development?

require 'haml'
require 'yaml'

@@config = YAML.load_file('config/application.yml')

def get_posts directory
  posts = []
  Dir.foreach() do |post|
    posts.push(post).reject!{|f| f.each_char.first == '.'}
  end
end

get '/' do
  @posts = get_posts @@config['output']
  haml :index
end

