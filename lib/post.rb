class Post
  attr_accessor :title, :author
 @@all=[]
 

 
  def initialize(title)
    @title = title
    
    @@all<<self
  end
  
  def self.all
    @@all
  end
  
    def author=(author)
    @author = author
  end
   def author
     @author
   end
  
  def author_name
 if self.author!=nil 
   self.author.name
 else
   nil
 end
end
  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end
end
 
end