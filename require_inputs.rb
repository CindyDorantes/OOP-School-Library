def grab_data_student
  print 'Age:'
  age = gets.chomp
  print 'Name:'
  name = gets.chomp
  print 'Has parent permission?[Y/N]:'
  permission = gets.chomp
  [age, name, permission]
end

def grab_data_teacher
  print 'Age: '
  age = gets.chomp
  print 'Name: '
  name = gets.chomp
  print 'Specialization: '
  specialization = gets.chomp
  [age, name, specialization]
end

def grab_data_book
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  [title, author]
end

def grab_data_rental(books, people)
  puts 'Select a book from the following list by number'
  list_books(books)
  book_index = gets.chomp.to_i
  puts 'Select a person from the following list by number (not id)'
  list_people(people)
  person_index = gets.chomp.to_i
  puts 'Enter date (yyyy-mm-dd):'
  date = gets.chomp
  [book_index, person_index, date]
end

def grab_rental_id
  print 'ID of the person:'
  person_id = gets.chomp.to_i
  print 'Rentals:'
  person_id
end
