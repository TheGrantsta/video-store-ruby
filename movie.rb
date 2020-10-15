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

  def is_new_release
    return @type == "NewRelease"
  end

  def is_regular
    return @type == "Regular"
  end

  def is_child
    return @type == "Child"
  end

  def to_s
    @title
  end
end
