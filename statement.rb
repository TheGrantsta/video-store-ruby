
class Statement
  attr_reader :customerName

  def initialize customerName
    @customerName = customerName
  end

  def to_s
    "Rental record for #{@customerName}"
  end
end
