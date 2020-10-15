require_relative "movie"

class Cost
  def self.calculate movie, days
    @cost = 0

    if movie.is_new_release
      calculate_cost_without_discount days
    elsif movie.is_regular
      calculate_cost_with_discount 2, days, 2
    else
      calculate_cost_with_discount 1.5, days, 3
    end

    @cost
  end

  private
  def self.calculate_cost_without_discount days
    calculate_cost_per_day days, 3
  end

  def self.calculate_cost_with_discount initialCost, days, discountDays
    @cost = initialCost

    calculate_cost_per_day days - discountDays, 1.5
  end

  def self.calculate_cost_per_day days, cost
    days.times { @cost += cost}
  end
end
