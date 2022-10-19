require 'json'
require_relative './book'

def save_books(books)
  books = books.map {|book| book = {:title => book.title, :author => book.author}}
  json = JSON.generate(books)
  File.open("Data/book.json", "w") { |f| f.write json }
end

def save_people(people)
  people = people.map do |person|
    if person.class.name == "Student"
      person = {:classname => person.class.name, :age => person.age, :name => person.name, :parent_permission => person.parent_permission}
    else
      person = {:classname => person.class.name, :age => person.age, :name => person.name, :specialization => person.specialization}
    end
  end
  json = JSON.generate(people)
  File.write("./Data/person.json", json)
end

def load_books(books)
  book_data = File.open("Data/book.json")
  book_data = book_data.read
  book_data = JSON.parse(book_data)
  book_data.map { |book| books.push(Book.new(book["title"], book["author"]))}
  books
end