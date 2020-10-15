require_relative "statement"
require_relative "movie"

movies = []

movies.push Movie.new "Harry Potter and the Prisoner of Azkaban", "Child"
movies.push Movie.new "Harry Potter and the Goblet of Fire", "Child"

statement = Statement.new "Bob The Builder", movies

puts "*******************************\n"
puts "#{statement}"
puts statement.movie_list
puts
puts "*******************************\n"
puts
