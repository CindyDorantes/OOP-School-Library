require_relative ("person.rb")

class Student < Person
  def initialize(classroom, age, name = "Unknown", parent_permission = true)
    @classroom = classroom
    @name = name
    @age = age
    @parent_permission = parent_permission    
    @id = Random.rand (1..1000)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

end
