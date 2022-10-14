class Classroom
  attr_accessor :label
  
  def initialize
    @label = Random.rand(1..100) 
  end
end