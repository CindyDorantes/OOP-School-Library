require_relative '../person'
require_relative '../capitalize_decorator'
require_relative '../trimmer_decorator'

describe Decorator do
  context 'When testing the decorators classes' do
    it 'shoul capitalize the name' do
      test_person = Person.new(24, 'diego')
      test_capitalized = CapitalizeDecorator.new(test_person)
      name = test_capitalized.correct_name
      expect(name).to eq 'Diego'
    end

    it 'should trimmed the name of a Person instance' do
      test_person = Person.new(24, 'Cindy Melisa Dorantes Sanchez')
      test_trimmer = TrimmerDecorator.new(test_person)
      name = test_trimmer.correct_name
      expect(name).to eq 'Cindy Meli'
    end
  end
end
