module Blog
  class Post < ActiveRecord::Base
  	has_many :comments
   
  	attr_accessor :author_name
    belongs_to :author, class_name: Blog.author_class.to_s

  	before_save :set_author

  	private
  		def set_author
  			self.author = Blog.author_class.find_or_create_by(name: author_name)
  		end

  end
end
