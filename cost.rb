require_relative "movie"

class Cost
  def self.calculate movie, days
    cost = 1.5
    if days <= 3
      cost
    else
      (days - 3).times { cost += 1.5 }
    end
    
    cost
  end
end
