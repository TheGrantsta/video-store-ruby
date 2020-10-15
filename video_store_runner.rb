require_relative "statement"
require_relative "rental"

m1 = Movie.new "Harry Potter and the Prisoner of Azkaban", "Child"
m2 = Movie.new "Harry Potter and the Goblet of Fire", "Child"
@rentals = []

@rentals.push Rental.new m1, 4
@rentals.push Rental.new m2, 2

statement = Statement.new "Bob The Builder", @rentals

puts
puts "*******************************\n"
puts "#{statement}"
puts statement.movie_list
puts statement.formatted_cost
puts statement.formatted_points
puts
puts "*******************************\n"
puts
