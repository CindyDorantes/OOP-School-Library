require_relative './nameable'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
    @rentals = []
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
