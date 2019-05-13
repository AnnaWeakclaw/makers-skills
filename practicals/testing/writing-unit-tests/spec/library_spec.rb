require "library"
describe Library do
  it "can return a list of all books" do
    #Arrange
    library = Library.new

    #Act
    all_books = library.list_books

    #Assert
    expect(library.books).to eq(all_books)
  end

  it "can add a new book" do
    #Arrange
    library = Library.new
    new_book = { title: "Ruby101", author: "Ruby Master", subject: "Ruby" }
    #Act
    library.add_book(new_book)
    #Assert
    expect(library.books).to include(new_book)
  end

  it "can find a specific book" do
    #Arrange
    library = Library.new
    new_book = { title: "Ruby101", author: "Ruby Master", subject: "Ruby" }
    library.add_book(new_book)
    #Act
    result = library.find_book(new_book[:title])

    #Assert
    expect(new_book).to eq(result)
  end

  it "can delete a book" do
    #Arrange
    library = Library.new
    new_book = { title: "Ruby101", author: "Ruby Master", subject: "Ruby" }
    library.add_book(new_book)

    #Act
    library.remove_book(new_book[:title])
    #Assert
    expect(library.books).not_to include(new_book)
  end

  it "can return a list of all books by subject" do
    #Arrange
    library = Library.new
    library.books = [
      { title: "Book1", author: "A B", subject: "Dummy" },
      { title: "Book2", author: "C D", subject: "Ruby" },
      { title: "Book3", author: "E F", subject: "Dummy" },
      { title: "Book4", author: "G H", subject: "Ruby" },
    ]
    expected = [
      { title: "Book1", author: "A B", subject: "Dummy" },
      { title: "Book3", author: "E F", subject: "Dummy" },
    ]

    #Act

    results = library.all_books_by_subject("Dummy")

    #Assert
    expect(expected).to eq(results)
  end
end
