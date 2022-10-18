require_relative './person'
require_relative './require_inputs'

class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
  end

  def classrooms(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

def create_student(people)
  age, name, permission = grab_data_student
  people << Student.new(age, name, parent_permission: permission.upcase == 'Y')
  puts 'Student created successfully'
end
