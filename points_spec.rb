require_relative "points"

RSpec.describe Points do
  describe "new release movies are only ones with special logic" do
    before (:all) do
      @new_release_movie = Movie.new "New release movie title", "NewRelease"
    end
    it "should return one point for one day rental" do
      days = 1
      points = Points.calculate @new_release_movie, days

      expect(points).to eq 1
    end
    it "should return two points per day after first day of rental" do
      days = 5
      points = Points.calculate @new_release_movie, days

      expect(points).to eq 9
    end
  end
  describe "regular movies accur one point" do
    before (:all) do
      @movie = Movie.new "New release movie title", "Regular"
    end
    it "should return one point" do
      days = 1
      points = Points.calculate @movie, days

      expect(points).to eq 1
    end
    it "should return one point - irrespective of the length of rental" do
      days = 5000
      points = Points.calculate @movie, days

      expect(points).to eq 1
    end
  end
  describe "children movies accur one point" do
    before (:all) do
      @movie = Movie.new "New release movie title", "Child"
    end
    it "should return one point" do
      days = 1
      points = Points.calculate @movie, days

      expect(points).to eq 1
    end
    it "should return one point - irrespective of the length of rental" do
      days = 5000
      points = Points.calculate @movie, days

      expect(points).to eq 1
    end
  end
end
