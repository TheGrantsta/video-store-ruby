require_relative "movie"

class Cost
  @cost = 0;

  def self.calculate movie, days
    if movie.type == "NewRelease"
      calculate_cost_without_discount days
    elsif movie.type == "Regular"
      calculate_cost_with_discount 2, days, 2
    else
      calculate_cost_with_discount 1.5, days, 3
    end

    @cost
  end

  private
  def self.calculate_cost_without_discount days
    @cost = days * 3
  end
  def self.calculate_cost_with_discount initialCost, days, discountDays
    @cost = initialCost

    (days - discountDays).times { @cost += 1.5 } unless days <= discountDays
  end
end
