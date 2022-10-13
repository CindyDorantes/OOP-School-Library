require_relative 'nameable'

class Decorator < Nameable
  def initialize(nameable)
    @nameable = Nameable.new(nameable) 
  end

  def correct_name
    @nameable.correct_name
  end
end