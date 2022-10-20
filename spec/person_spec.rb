require '../person'

describe Person do
  context 'When testing the person class' do
    it 'should return the name when we call the name method' do
      test_person = Person.new(20, 'Diego')
      name = test_person.name
      expect(name).to eq 'Diego'
    end

    it 'should return the age when we call the age method' do
      test_person = Person.new(20, 'Diego')
      age = test_person.age
      expect(age).to eq 20
    end

    it 'should return true when we call the can_use_services method' do
      test_person = Person.new(20, 'Diego')
      result = test_person.can_use_services?
      expect(result).to eq true
    end

    it 'should return the name capitalize when we call the correct_name method' do
      test_person = Person.new(20, 'Diego')
      result = test_person.correct_name
      expect(result).to eq 'Diego'
    end
  end
end
