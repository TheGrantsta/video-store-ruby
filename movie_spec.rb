require_relative "movie"

RSpec.describe Movie do
  it "should check that the type is supported - Child" do
    movie = Movie.new "Children's movie title", "Child"

    expect(movie.type).to eq "Child"
  end
  it "should check that the type is supported - NewRelease" do
    movie = Movie.new "New release movie title", "NewRelease"

    expect(movie.type).to eq "NewRelease"
  end
  it "should check that the type is supported - Regular" do
    movie = Movie.new "Regular movie title", "Regular"

    expect(movie.type).to eq "Regular"
  end
  it "should check that the type is not supported - Children" do
    movie = Movie.new "Children's movie title", "Children"

    expect(movie.type).to eq "UNKNOWN"
  end
  it "should set up a new release movie object with the appropriate values" do
    movie = Movie.new "New release movie title", "NewRelease"

    expect(movie.title).to eq "New release movie title"
    expect(movie.type).to eq "NewRelease"
  end
  it "should set up a regular movie object with the appropriate values" do
    movie = Movie.new "Regular movie title", "Regular"

    expect(movie.title).to eq "Regular movie title"
    expect(movie.type).to eq "Regular"
  end
  it "should set up a children's movie object with the appropriate values" do
    movie = Movie.new "Children's movie title", "Child"

    expect(movie.title).to eq "Children's movie title"
    expect(movie.type).to eq "Child"
  end
end
