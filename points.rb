require_relative "movie"

class Points
  def self.calculate movie, days
    @points = 1

    (days - 1).times { @points +=2 } if movie.is_new_release

    @points
  end
end
