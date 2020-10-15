require_relative "statement"
require_relative "rental"

m1 = Movie.new "Harry Potter and the Prisoner of Azkaban", "Child"
m2 = Movie.new "Harry Potter and the Goblet of Fire", "Child"
m3 = Movie.new "James Bond - Quantum of Solace", "Regular"
@rentals = []

@rentals.push Rental.new m1, 4
@rentals.push Rental.new m2, 2
@rentals.push Rental.new m3, 1

statement = Statement.new "Bob The Builder", @rentals

puts "#{statement}"
