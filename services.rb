class Services
  def self.get_posts directory
    posts = []
    directory.entries.each do |post|
      posts.push(post).reject!{|f| f.each_char.first == '.'}
    end
    return posts ? posts : posts.push("")
  end
end
