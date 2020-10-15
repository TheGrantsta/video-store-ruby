class Movie
  attr_reader :title, :type

  TYPES = ["NewRelease", "Regular", "Child"]

  def initialize title, type
    @title = title

    if TYPES.include? type
      @type = type
    else
      @type = "UNKNOWN"
    end
  end
end
