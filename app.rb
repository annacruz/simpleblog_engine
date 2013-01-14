require 'sinatra'
require 'sinatra/reloader' if development?

require 'haml'
require 'yaml'

require './services'

@@config = YAML.load_file('config/application.yml')

get '/' do
  @posts = Services.get_posts @@config['output']
  haml :index
end

