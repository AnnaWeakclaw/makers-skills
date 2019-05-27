require_relative "libraryItem"
class Newspaper < LibraryItem
  attr_reader :title

  def check_in
    raise 'newspapers are not available for loan'
  end

  def check_out
    raise 'newspapers are not available for loan'
  end
end
