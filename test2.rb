require 'json'

json = '["books", "people", "rentals"]'
ruby = JSON.parse(json)
puts ruby

ruby2 = ["mani", "Cindy", 1]
json2 = JSON.generate(ruby2)
puts json2

book_data = File.open("Data/save_data.json")
book_data = book_data.read
book_data = JSON.parse(book_data)
puts book_data[books]["title"]
