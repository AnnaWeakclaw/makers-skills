require_relative "libraryItem"

class Article < LibraryItem
  attr_reader :title
  def my_author(name, number)
    @author.new(name, number)
  end
end
