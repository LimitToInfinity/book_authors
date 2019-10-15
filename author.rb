class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def my_books
        damons_book_authors = BookAuthor.all.select { |book_author| book_author.author == self }
        damons_book_authors.map { |book_author| book_author.book }
    end

    def new_book(title)
        new_book = Book.new(title)

        BookAuthor.new(self, new_book)
    end

    def add_author(new_or_existing_book)
        # BookAuthor.new(self, book)

        Book.all.find { |book| book == new_or_existing_book } ? BookAuthor.new(self, new_or_existing_book) : BookAuthor.new(self, Book.new(new_or_existing_book))
    end

end