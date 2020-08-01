require 'rails_helper'

RSpec.describe MoviesController do 
  
  describe "GET similar_movies" do
    @movie = Movie.new(id:1, director:"Armando Fox", title:"Jaws")
    it "receives click from 'Find With Same Director'" do
      allow(Movie).to receive(:where).and_return(@movie)
      get 'same_director', {:id => 1}
      expect(response).to render(same_director_path)
    end
  end
  
  describe "GET similar_movies" do
    @movie = Movie.new(id:1, title:"Jaws")
    it "Checks for similar movies when there is no director" do
      allow(Movie).to receive(:where).and_return([])
      get 'same_director', {:id => 1}
      expect(response).to redirct_to(root_path)
    end
  end

end