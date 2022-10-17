class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
end

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
end

def create_book(books)
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  books << Book.new(title, author)
  puts 'Book created successfully'
end

def list_books(books)
  if books.length.zero?
    puts 'There are not books registered in the system'
  else
    books.each_with_index do |book, idx|
      puts "#{idx}) [#{book.class}] Title: #{book.title}, Author: #{book.author}"
    end
  end
end
