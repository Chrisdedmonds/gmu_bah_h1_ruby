# Create a class named Bookmark with:
# An initializer that accepts url and title parameters:
# it should set instance variables named url, title
# it should set a read only variable named last_visited
# a method named visit! which sets last_visited to the current time and date 
# hint: the Time.now methods returns an instance of Time
class Bookmark
  def initialize(url, title)
    @url = url
    @title = title
  end
  
  def visit!(last_visited)
    last_visited = Time.now  
  end
end
