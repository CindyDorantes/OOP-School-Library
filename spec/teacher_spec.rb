require_relative '../teacher'

describe Teacher do
  context 'When testing the Teacher class' do
    it 'should return name when we call the name method' do
      test_teacher = Teacher.new('Space Travel', 55, 'Marlon')
      name = test_teacher.name
      expect(name).to eq 'Marlon'
    end

    it 'should return age when we call the age method' do
      test_teacher = Teacher.new('Space Travel', 55, 'Marlon')
      age = test_teacher.age
      expect(age).to eq 55
    end

    it 'should return specialization when we call the specialization method' do
      test_teacher = Teacher.new('Space Travel', 55, 'Marlon')
      specialization = test_teacher.specialization
      expect(specialization).to eq 'Space Travel'
    end
  end
end
