# encoding: UTF-8
require 'maruku'
require 'yaml'

def get_config(file)
  YAML.load_file(file)
end

config = get_config('config/application.yml')

desc 'Generates the html files from markdown'
task :generate do
  files = []
  Dir.foreach(config['input']) do |filename|
    files.push(filename).reject!{|f| f.each_char.first == '.'}
  end
  files.each do |file|
   markup = Maruku.new(File.open("./#{config['input']}#{file}").read)
   html = File.open("./#{config['output']}#{file.split('.')[0]}.html",'w')
   html.write(markup.to_html_document)
  end
end

