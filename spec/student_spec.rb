require_relative '../student'

describe Student do
  context 'When testing the Student class' do
    it 'should return name when we call the name method' do
      test_student = Student.new(20, 'Diego')
      name = test_student.name
      expect(name).to eq 'Diego'
    end

    it 'should return age when we call the age method' do
      test_student = Student.new(20, 'Diego')
      age = test_student.age
      expect(age).to eq 20
    end

    it 'should return parent_permission when we call the parent_permission method' do
      test_student = Student.new(20, 'Diego')
      parent_permission = test_student.parent_permission
      expect(parent_permission).to eq true
    end

    it 'should return parent_permission when we call the parent_permission method' do
      test_student = Student.new(20, 'Diego', parent_permission: false)
      parent_permission = test_student.parent_permission
      expect(parent_permission).to eq false
    end

    it 'should return classroom when we call the classroom method' do
      test_student = Student.new(20, 'Diego', 'Bethoven')
      classroom = test_student.classroom
      expect(classroom).to eq 'Bethoven'
    end

    it 'shoul return ¯(ツ)/¯ when we call the play hooky method' do
      test_student = Student.new(20, 'Diego')
      result = test_student.play_hooky
      expect(result).to eq '¯(ツ)/¯'
    end
  end
end
