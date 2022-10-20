require '../book'

describe Book do
  context 'When testing the book class' do
    it 'should return title when we call the title method' do
      test_book = Book.new('Harry Potter', 'JK Rowling')
      title = test_book.title
      expect(title).to eq 'Harry Potter'
    end

    it 'should return author when we call the author method' do
      test_book = Book.new('Harry Potter', 'JK Rowling')
      author = test_book.author
      expect(author).to eq 'JK Rowling'
    end
  end
end
