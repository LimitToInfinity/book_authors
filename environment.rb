require "pry"

require_relative "./author"
require_relative "./book"
require_relative "./book_author"

damon = Author.new("Damon")
jesse = Author.new("Jesse")

the_best = Book.new("The Best Book")
the_worst = Book.new("Damon really?")

book_author1 = BookAuthor.new(damon, the_best)
book_author2 = BookAuthor.new(damon, the_worst)

binding.pry