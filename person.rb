require_relative 'nameable'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
  end

  attr_reader :id, :parent_permission
  attr_accessor :name, :age

  def correct_name
    @name
  end

  def can_use_services?
    true if of_age?(@age) == true || parent_permission == true
  end

  private

  def of_age?(age)
    # Rename is_of_age? to of_age? because of linter
    age >= 18
  end
end

person = Person.new(33, "cindy")
puts person.correct_name
