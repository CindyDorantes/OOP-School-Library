require_relative './app'
require_relative './options'

def main
  app = App.new
  exit_button = true
  puts 'Welcome to the School Library System'
  options(app, exit_button)
end

main
