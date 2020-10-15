require_relative "statement"
require_relative "rental"
require_relative "movie"

RSpec.describe Statement do
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
    expect("#{@statement}").to eq "Rental record for John Doe"
  end
  it "should display the videos rented" do
    expect(@statement.movie_list).to eq "     Harry Potter and the Prisoner of Azkaban\n     Harry Potter and the Goblet of Fire\n"
  end
  it "should display the formatted cost of the videos rented" do
    expect(@statement.formatted_cost).to eq "You owe: £4.50"
  end
  it "should display the formatted frequent renter points" do
    expect(@statement.formatted_points).to eq "You earned: 2 frequent renter points"
  end
end
