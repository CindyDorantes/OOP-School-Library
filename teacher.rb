require_relative('person')

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

def create_teacher(people)
  print 'Age: '
  age = gets.chomp
  print 'Name: '
  name = gets.chomp
  print 'Specialization: '
  specialization = gets.chomp
  people << Teacher.new(specialization, age, name)
  puts 'Teacher created successfully'
end