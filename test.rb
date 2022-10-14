require_relative './student'
require_relative './classroom'
require_relative './book'
require_relative './rental'

tiago = Student.new(33, 'Tiago')
cindy = Student.new(33, 'Cindy')

class_math = Classroom.new('math')
class_math.add_student(tiago)
class_math.add_student(cindy)

andy = Person.new(33, 'Andy')

book1 = Book.new('La iliada', 'Homero')
book2 = Book.new('cuentos', 'Asimov')

rental01 = Rental.new('2022-10-12', book1, andy)
rental02 = Rental.new('2022-10-12', book2, andy)
puts rental01
puts rental02

# puts andy.rentals.map( { |rental| rental.book.title } )
