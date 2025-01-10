
class Ebook
  attr_accessor :title, :author, :content

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end
  

  def to_s
    "#{@title} by #{@author} and #{@content}"
  end
end
 
