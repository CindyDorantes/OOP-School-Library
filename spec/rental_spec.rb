require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do
  context 'When testing the rental' do
    it 'should return the rental when we call the rental method' do
      test_book = Book.new('Sleep', 'Diego')
      test_person = Person.new('34', 'Cindy')
      test_rental = Rental.new('2022/10/20', test_book, test_person)
      date = test_rental.date
      expect(date).to eq '2022/10/20'
    end
  end
end
