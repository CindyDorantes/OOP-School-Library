require_relative './app'

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

def main
  app = App.new
  exit_button = true
  puts 'Welcome to the School Library System'

  while exit_button
    puts @options
    selection = gets.chomp.to_i

    case selection
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      puts 'Do you wants to create a student [1] or a teacher [2]? Input the number'
      people_choice = gets.chomp.to_i
      case people_choice
      when 1
        app.create_student
      when 2
        app.create_teacher
      end
    when 4
      app.create_book
    when 5
      app.create_rental
    when 6
      app.list_rentals_by_id
    when 7
      puts 'Thanks for using the School Library System. Goodbye'
      exit_button = false
    end
  end
end

main
