require 'maruku'
require 'open3'

desc 'Generates the html files from markdown'
task :generate do
  files = []
  Dir.foreach('./_public') do |filename|
    files.push(filename).reject!{|f| f.each_char.first == '.'}
  end
  files.each do |file|
   markup = Maruku.new(File.open("./_public/#{file}").read)
   html = File.open("./public/#{file.split('.')[0]}.html",'w')
   html.write(markup.to_html_document)
  end
end

