require 'rails_helper'

RSpec.describe MovieController do
  before(:each) do 
    @movie = Movie.create
  end
  describe "GET similar_movies" do
    it "receives click from 'Find With Same Director'" do
      expect(same_director).to_receive(params[:id]).to_eq(@movie.id)
    end
  end

end