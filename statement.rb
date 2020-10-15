require_relative "cost"
require_relative "points"

class Statement
  attr_reader :customerName

  def initialize customerName, rentals
    @customerName = customerName
    @rentals = rentals
  end

  def formatted_title
    "Rental record for #{@customerName}"
  end

  def movie_list
    movieList = ""

    @rentals.each {|r| movieList += %Q{#{r.movie} #{format_cost Cost.calculate(r.movie, r.days)}\n} }

    movieList
  end

  def formatted_cost
    cost = 0

    @rentals.each {|r| cost += Cost.calculate(r.movie, r.days) }

    "You owe: #{format_cost cost}"
  end

  def formatted_points
    points = 0

    @rentals.each {|r| points += Points.calculate(r.movie, r.days)}

    "You earned: #{points} frequent renter points"
  end

  def to_s
    "\n*********************************************\n#{formatted_title}\n\n#{movie_list}\n#{formatted_cost}\n#{formatted_points}\n*********************************************\n\n"
  end

  private
  def format_cost cost
    if cost.to_s.include? "."
      return "£#{cost}0"
    else
      return "£#{cost}.00"
    end
  end
end
