require_relative "statement"
require_relative "rental"
require_relative "movie"

RSpec.describe Statement do
  describe "display methods" do
    before (:all) do
      m1 = Movie.new "Harry Potter and the Prisoner of Azkaban", "Child"
      m2 = Movie.new "Harry Potter and the Goblet of Fire", "Child"
      @rentals = []

      @rentals.push Rental.new m1, 4
      @rentals.push Rental.new m2, 2

      @statement = Statement.new "John Doe", @rentals
    end
    it "should display customer name" do
      expect(@statement.customerName).to eq "John Doe"
    end
    it "should display 'Rental record for [customer name]'" do
      expect(@statement.formatted_title).to eq "Rental record for John Doe"
    end
    it "should display the videos rented" do
      expect(@statement.movie_list).to eq "     Harry Potter and the Prisoner of Azkaban £3.00 (4 days)\n     Harry Potter and the Goblet of Fire £1.50 (2 days)\n"
    end
    it "should display the formatted cost of the videos rented" do
      expect(@statement.formatted_cost).to eq "You owe: £4.50"
    end
    it "should display the formatted frequent renter points" do
      expect(@statement.formatted_points).to eq "You earned: 2 frequent renter points"
    end
  end
  describe "check various formatted cost possibilities" do
    it "should display the cost correctly when £2" do
      m1 = Movie.new "Harry Potter and the Prisoner of Azkaban", "Regular"
      rentals = []

      rentals.push Rental.new m1, 1

      statement = Statement.new "John Doe", rentals
      expect(statement.formatted_cost).to eq "You owe: £2.00"
    end
    it "should display the cost correctly when £1.50" do
      m1 = Movie.new "Harry Potter and the Prisoner of Azkaban", "Child"
      rentals = []

      rentals.push Rental.new m1, 1

      statement = Statement.new "John Doe", rentals
      expect(statement.formatted_cost).to eq "You owe: £1.50"
    end
  end
end
