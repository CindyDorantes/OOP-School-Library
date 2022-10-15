require_relative './app'
require_relative './student'

new_app = App.new

new_app.create_student
new_app.create_teacher
new_app.create_book
# new_app.list_people
# new_app.list_books
new_app.create_rental
