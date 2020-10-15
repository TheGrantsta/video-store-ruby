require_relative "statement"
require_relative "movie"

RSpec.describe Statement do
  before (:all) do
    @movies = []

    @movies.push Movie.new "Harry Potter and the Prisoner of Azkaban", "Child"
    @movies.push Movie.new "Harry Potter and the Goblet of Fire", "Child"
  end
  it "should display customer name" do
    statement = Statement.new "John Doe", @movies

    expect(statement.customerName).to eq "John Doe"
  end
  it "should display 'Rental record for [customer name]'" do
    statement = Statement.new "Jane Smith", @movies

    expect("#{statement}").to eq "Rental record for Jane Smith"
  end
  it "should display the videos rented" do
    statement = Statement.new "Jane Jones", @movies

    expect(statement.movie_list).to eq "Harry Potter and the Prisoner of Azkaban\nHarry Potter and the Goblet of Fire\n"
  end
end
