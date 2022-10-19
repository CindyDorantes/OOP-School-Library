require_relative './app'
require_relative './options'
require_relative './store_data'

def main
  app = App.new
  exit_button = true
  app.books = load_books(app.books)
  app.people = load_people(app.people)
  app.rentals = load_rentals(app.rentals, app.books, app.people)
  puts 'Welcome to the School Library System'
  options(app, exit_button)
end

main
