require_relative './book'
require_relative './person'
require_relative './require_inputs'

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

  book_index, person_index, date = grab_data_rental(books, people)
  rentals << Rental.new(date, books[book_index], people[person_index])
  puts 'Rental created successfully'
end

def list_rentals_by_id(rentals)
  person_id = grab_rental_id
  rentals.each do |rental|
    if rental.person.id == person_id
      puts "\nDate: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}"
    end
  end
end
