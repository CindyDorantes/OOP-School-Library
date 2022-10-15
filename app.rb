require_relative './student'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
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
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    print 'Specialization:'
    specialization = gets.chomp
    @people << Teacher.new(specialization, age, name)
    puts 'Teacher created successfully'
  end

end