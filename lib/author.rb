class Author
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @posts=[]
  end
  
 
  
   def add_post(post)
    @posts << post
    post.author = self unless post.author == self
  end
  def add_post_by_title(name)
    a=Post.new(name)
    @posts<<a
    a.author=self
  end
  def posts
    @posts
  end
  def self.post_count
    return self.posts.size
  end
end