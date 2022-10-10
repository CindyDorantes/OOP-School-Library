require_relative ("person.rb")

class Teacher
  def initialize(specialization, age, name = "Unknown", parent_permission = true)
    @specialization = specialization
    @name = name
    @age = age
    @parent_permission = parent_permission    
    @id = Random.rand (1..1000)    
  end

  def can_use_services?
    true
  end
end
