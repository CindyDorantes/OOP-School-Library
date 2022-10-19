require 'json'
require_relative './book'
require_relative './teacher'
require_relative './rental'
require_relative './student'

def save_books(books)
  books = books.map { |book| { title: book.title, author: book.author } }
  json = JSON.generate(books)
  File.write('data/book.json', json)
end

def save_people(people)
  people = people.map do |person|
    if person.instance_of?(Student)
      { classname: person.class.name, age: person.age, name: person.name,
        parent_permission: person.parent_permission }
    else
      { classname: person.class.name, age: person.age, name: person.name,
        specialization: person.specialization }
    end
  end
  json = JSON.generate(people)
  File.write('./data/person.json', json)
end

def save_rentals(rentals, books, people)
  rentals = rentals.map do |rental|
    rental = {
      date: rental.date,
      book_index: books.find_index { |book| book.title == rental.book.title },
      person_index: people.find_index { |person| person.id == rental.person.id }
    }
  end
  json = JSON.generate(rentals)
  File.write('./data/rental.json', json)
end

def load_books(books)
  book_data = File.open('data/book.json')
  book_data = book_data.read
  book_data = JSON.parse(book_data)
  book_data.map { |book| books.push(Book.new(book['title'], book['author'])) }
  books
end

def load_people(people)
  people_data = File.open('data/person.json')
  people_data = people_data.read
  people_data = JSON.parse(people_data)
  people_data.each do |person|
    if person['classname'] == 'Student'
      people.push(Student.new(person['age'], person['name'], parent_permission: person['parent_permission']))
    else
      people.push(Teacher.new(person['specialization'], person['age'], person['name']))
    end
  end
  people
end

def load_rentals(rentals, books, people)
  rentals_data = File.open('data/rental.json')
  rentals_data = rentals_data.read
  rentals_data = JSON.parse(rentals_data)
  rentals_data.map do |rental|
    rentals.push(Rental.new(rental['date'], books[rental['book_index']], people[rental['person_index']]))
  end
  rentals
end
