require_relative "movie"

class Cost
  @cost = 0;
  def self.calculate movie, days
    if movie.type == "NewRelease"
      calculate_new_release_rental days
    elsif movie.type == "Regular"
      calculate_regular_rental days
    else
      calculate_child_movie_rental days
    end

    @cost
  end

  private
  def self.calculate_new_release_rental days
      @cost = days * 3
  end
  def self.calculate_regular_rental days
    calculate_cost_with_discount 2, days, 2
  end
  def self.calculate_child_movie_rental days
    calculate_cost_with_discount 1.5, days, 3
  end
  def self.calculate_cost_with_discount initialCost, days, discountDays
    @cost = initialCost

    (days - discountDays).times { @cost += 1.5 } unless days <= discountDays
  end
end
