require_relative './book'
require_relative './person'

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    book.rentals << self
    @person = person
    person.rentals << self
  end
end

def create_rental(app)
  people = app.people
  books = app.books
  rentals = app.rentals
  if people.size.zero? || books.size.zero?
    return puts 'There are not any person and/or book in the system. Rental cannot be created'
  end

  puts 'Select a book from the following list by number'
  list_books(books)
  book_index = gets.chomp.to_i
  puts 'Select a person from the following list by number (not id)'
  list_people(people)
  person_index = gets.chomp.to_i
  puts 'Enter date (yyyy-mm-dd):'
  date = gets.chomp
  rentals << Rental.new(date, books[book_index], people[person_index])
  puts 'Rental created successfully'
end

def list_rentals_by_id(rentals)
  print 'ID of the person:'
  person_id = gets.chomp.to_i
  print 'Rentals:'

  rentals.each do |rental|
    if rental.person.id == person_id
      puts "\nDate: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}"
    end
  end
end
