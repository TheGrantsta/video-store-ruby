require_relative "movie"

class Rental
  attr_reader :movie, :days

  def initialize movie, days
    @movie = movie
    @days = days
  end
end
