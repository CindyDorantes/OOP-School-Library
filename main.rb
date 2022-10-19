require_relative './app'
require_relative './options'
require_relative './store_data.rb'

def main
  app = App.new
=begin
app.books = []
app.people = []
app.rentals = []
=end
  exit_button = true
  app.books = load_books(app.books)
  puts 'Welcome to the School Library System'
  options(app, exit_button)
end

main
