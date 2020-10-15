require_relative "movie"

class Points
  def self.calculate movie, days
    @points = 1

    if movie.is_new_release
      (days - 1).times { @points +=2 }
    end

    @points
  end
end
