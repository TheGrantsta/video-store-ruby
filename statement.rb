require "money"
require_relative "cost"

class Statement
  attr_reader :customerName

  def initialize customerName, rentals
    @customerName = customerName
    @rentals = rentals
  end

  def movie_list
    movieList = ""

    @rentals.each {|r| movieList += %Q{#{r.movie}\n} }

    movieList
  end

  def formatted_cost
    cost = 0

    @rentals.each {|r| cost += Cost.calculate(r.movie, r.days) }

    format_cost cost
  end

  def to_s
    "Rental record for #{@customerName}"
  end

  private
  def format_cost cost
    "You owe: £#{cost}0"
  end
end
