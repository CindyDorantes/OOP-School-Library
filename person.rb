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

def list_people(people)
  if people.length.zero?
    puts 'There are not people registered in the system'
  else
    people.each_with_index do |person, idx|
      puts "#{idx}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end
end
