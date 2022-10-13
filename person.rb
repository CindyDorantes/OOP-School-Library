require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
  end

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

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalizedPerson)
puts capitalized_trimmed_person.correct_name
