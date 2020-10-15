require_relative "movie"

RSpec.describe Movie do

  it "should set up a children's movie object with the appropriate values" do
    movie = Movie.new "Children's movie title", "Child"

    expect(movie.title).to eq "Children's movie title"
    expect(movie.type).to eq "Child"
  end
end
