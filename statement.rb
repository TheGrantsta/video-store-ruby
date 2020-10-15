
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

  def to_s
    "Rental record for #{@customerName}"
  end
end
