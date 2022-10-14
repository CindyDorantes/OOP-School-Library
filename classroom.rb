class Classroom
  attr_accessor :label

  def initialize
    @label = Random.rand(1..100)
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom(self)
  end
end