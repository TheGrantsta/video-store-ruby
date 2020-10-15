
class Statement
  attr_reader :customerName

  def initialize customerName, movies
    @customerName = customerName
    @movies = movies
  end

  def movie_list
    movieList = ""

    @movies.each {|m| movieList += %Q{#{m.title}\n} }

    movieList
  end

  def to_s
    "Rental record for #{@customerName}"
  end
end
