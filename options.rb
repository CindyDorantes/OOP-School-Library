require_relative './rental'
require_relative './book'
require_relative './student'
require_relative './teacher'
require_relative './person'
require_relative './store_data'

@options = [
  'Please choose an option by entering a number:',
  '1 - List all books',
  '2 - List all people',
  '3 - Create a person',
  '4 - Create a book',
  '5 - Create a rental',
  '6 - List all rentals for a given person id',
  '7 - Exit'
]

def options(app, exit_button)
  while exit_button
    puts @options
    selection = gets.chomp.to_i

    case selection
    when 1
      list_books(app.books)
    when 2
      list_people(app.people)
      p app.people
    when 3
      puts 'Do you wants to create a student [1] or a teacher [2]? Input the number'
      people_choice = gets.chomp.to_i
      case people_choice
      when 1
        create_student(app.people)
      when 2
        create_teacher(app.people)
      end
    when 4
      create_book(app.books)
    when 5
      create_rental(app)
    when 6
      list_rentals_by_id(app.rentals)
    when 7
      puts 'Thanks for using the School Library System. Goodbye'
      save_books(app.books)
      save_people(app.people)
      exit_button = false
    end
  end
end
