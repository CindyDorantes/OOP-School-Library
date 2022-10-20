require_relative '../classroom'
require_relative '../student'

describe Classroom do
  context 'When testing the classroom' do
    it 'should return the label when we call the label method' do
      test_classroom = Classroom.new('Einstein')
      label = test_classroom.label
      expect(label).to eq 'Einstein'
    end

    it 'should return the student when we call the student method' do
      test_student = Student.new(23, 'Diego')
      test_classroom = Classroom.new('Einstein')
      test_classroom.add_student(test_student)
      result = test_classroom.students.length
      expect(result).to eq 1
    end
  end
end
