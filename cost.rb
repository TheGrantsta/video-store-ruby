require_relative "movie"

class Cost
  @cost = 0;
  def self.calculate movie, days
    if movie.type == "NewRelease"
      calculate_new_release_rental days
    else
      calculate_child_movie_rental days
    end

    @cost
  end

  private
  def self.calculate_new_release_rental days
      @cost = days * 3
  end
  def self.calculate_child_movie_rental days
      @cost = 1.5

      (days - 3).times { @cost += 1.5 } unless days <= 3
  end
end
