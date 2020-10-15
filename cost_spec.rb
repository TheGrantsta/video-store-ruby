require_relative "cost"

RSpec.describe Cost do
  describe "calculate cost of children's movie rental" do
    before(:all) do
      @movie = Movie.new "Children's movie title", "Child"
    end

    it "should return £1.50 for first three days" do
      days = 1
      cost = Cost.calculate @movie, days

      expect(cost).to eq 1.5
    end
    it "should return £1.50 for first three days" do
      days = 2
      cost = Cost.calculate @movie, days

      expect(cost).to eq 1.5
    end
    it "should return £1.50 for first three days" do
      days = 3
      cost = Cost.calculate @movie, days

      expect(cost).to eq 1.5
    end
    it "should return £1.50 for first three days - then 1 day @ £1.5 per day" do
      days = 4
      cost = Cost.calculate @movie, days

      expect(cost).to eq 3
    end
    it "should return £1.50 for first three days - then 2 days @ £1.5 per day" do
      days = 5
      cost = Cost.calculate @movie, days

      expect(cost).to eq 4.5
    end
  end
  describe "calculate cost of new release movie rental" do
    before(:all) do
      @movie = Movie.new "New release movie title", "NewRelease"
    end

    it "should return £3 per day" do
      days = 1
      cost = Cost.calculate @movie, days

      expect(cost).to eq 3
    end
    it "should return £3 per day - 2 days @ £3 is £6" do
      days = 2
      cost = Cost.calculate @movie, days

      expect(cost).to eq 6
    end
  end
  describe "calculate cost of regular movie rental" do
    before(:all) do
      @movie = Movie.new "Regular movie title", "Regular"
    end

    it "should return £2 for the first two days - 1 day rental" do
      days = 1
      cost = Cost.calculate @movie, days

      expect(cost).to eq 2
    end
    it "should return £2 for the first two days - 2 days rental" do
      days = 2
      cost = Cost.calculate @movie, days

      expect(cost).to eq 2
    end
    it "should return £1.5 per day after 2 days - 3 days rental is £3.5" do
      days = 3
      cost = Cost.calculate @movie, days

      expect(cost).to eq 3.5
    end
    it "should return £1.5 per day after 2 days - 5 days rental is £6.5" do
      days = 5
      cost = Cost.calculate @movie, days

      expect(cost).to eq 6.5
    end
  end
end
