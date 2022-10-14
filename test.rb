require_relative './student'
require_relative './classroom'
require_relative './book'

tiago = Student.new(33, 'Tiago')
cindy = Student.new(33, 'Cindy')

class_math = Classroom.new('math')
class_math.add_student(tiago)

book1 = Book.new('La iliada', 'Homero')
puts book1.title