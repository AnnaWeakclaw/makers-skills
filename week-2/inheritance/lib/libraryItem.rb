class LibraryItem

  def initialize(title, author = Author)
    @title = title
    @on_loan = false
    @author = author
  end
  def on_loan?
    @on_loan
  end

  def check_in
    raise "item is not currently on loan" if !on_loan?
    @on_loan = false
  end

  def check_out
    raise "item is currently on loan" if on_loan?
    @on_loan = true
  end
end
