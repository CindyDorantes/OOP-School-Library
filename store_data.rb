require 'json'
require_relative './book'

def save_books(books)
  books = books.map {|book| book = {:title => book.title, :author => book.author}}
  json = JSON.generate(books)
  File.open("Data/save_data.json", "w") { |f| f.write json }
end

def load_books
  book_data = File.open("Data/save_data.json")
  book_data = book_data.read
  book_data = JSON.parse(book_data)
end