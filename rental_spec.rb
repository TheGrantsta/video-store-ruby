require_relative "rental"
require_relative "movie"

RSpec.describe Rental do
  describe "read properties" do
    before (:all) do
      movie = Movie.new "Harry Potter and the Prisoner of Azkaban", "Child"
      days = 5

      @rental = Rental.new movie, days
    end
    it "should respond to #movies" do
      expect(@rental).to respond_to(:movie)
      expect(@rental.movie.title).to eq "Harry Potter and the Prisoner of Azkaban"
      expect(@rental.movie.type).to eq "Child"
    end
    it "should respond to #days" do
      expect(@rental).to respond_to(:days)
      expect(@rental.days).to eq 5
    end
  end
end
