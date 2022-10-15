require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_people
    if @people.length.zero?
      puts 'There are not people registered in the system'
    else
      @people.each_with_index do |person, idx|
        puts "#{idx}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end

  def list_books
    if @books.length.zero?
      puts 'There are not books registered in the system'
    else
      @books.each_with_index do |book, idx|
        puts "#{idx}) [#{book.class}] Title: #{book.title}, Author: #{book.author}"
      end
    end
  end
  
  def create_student
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    print 'Has parent permission?[Y/N]:'
    permission = gets.chomp
    @people << Student.new(age, name, parent_permission: permission.upcase == 'Y')
    puts 'Student created successfully'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    @people << Teacher.new(specialization, age, name)
    puts 'Teacher created successfully'
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books << Book.new(title,author)
    puts 'Book created successfully'
  end

  def create_rental
    if @people.size.zero? || @books.size.zero?
      return puts 'There are not any person and/or book in the system. Rental cannot be created'
    end

    puts 'Select a book from the following list by number'
    self.list_books
    book_index = gets.chomp.to_i
    puts 'Select a person from the following list by number (not id)'
    self.list_people
    person_index = gets.chomp.to_i
    puts 'Enter date (yyyy-mm-dd):'
    date = gets.chomp
    @rentals << Rental.new(date, @books[book_index], @people[person_index])
    puts 'Rental created successfully'
  end

end