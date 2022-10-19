require_relative('person')
require_relative './require_inputs'

class Teacher < Person
  attr_reader :specialization
  
  def initialize(specialization, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

def create_teacher(people)
  age, name, specialization = grab_data_teacher
  people << Teacher.new(specialization, age, name)
  puts 'Teacher created successfully'
end
