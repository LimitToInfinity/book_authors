class BookAuthor
    
    attr_reader :author, :book

    @@all = []

    def initialize(author, book)
        @author = author
        @book = book

        @@all << self
    end

    def self.all
        @@all
    end

end