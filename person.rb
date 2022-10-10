class Person
  def initialize(age, name = "Unknown", parent_permission = true)
    @name = name
    @age = age
    @parent_permission = parent_permission    
    @id = Random.rand (1..1000)
  end

  attr_reader :id
  attr_accessor :name
  attr_accessor :age

  def can_use_services?
    true if (is_of_age?(@age) == true|| parent_permission == true)
  end

  private

  def is_of_age?(age)
    if (age >= 18)
      true
    else
      false
    end
  end
end

person = Person.new(33, "cindy")
puts person
puts person.can_use_services?
