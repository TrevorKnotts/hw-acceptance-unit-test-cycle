require 'rails_helper'

RSpec.describe MovieController do
  before(:each) do 
    @movie = Movie.create
  end
  describe "GET similar_movies" do
    it "receives click from 'Find With Same Director'" do
      allow(Movie).to receive(:where).and_return(@movie)
      get 'same_director', {:id => @movie.id}
      expect(response).to render(same_director_path)
    end
  end
  
  describe "GET similar_movies" do
    it "Checks for similar movies when there is no director" do
      allow(Movie).to receive(:where).and_return([])
      get 'same_director', {:id => @movie.id}
      expect(response).to redirct_to(root_path)
    end
  end

end