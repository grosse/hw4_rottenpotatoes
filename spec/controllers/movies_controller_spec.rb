require 'spec_helper'

describe MoviesController do
  describe "Find Movies With Same Director" do
    it "should call get the director, then search for movies with the same director" do
      movie="13"
      Movie.should_receive(:find_with_same_director).with(movie)
      post :find_with_same_director, { :movie_id => movie }

    end
    it "should select the find same director template for rendering" do
      movie="13"
      Movie.should_receive(:find_with_same_director).with(movie)
      post :find_with_same_director, { :movie_id => movie }
      response.should render_template(:find_with_same_director)
    end
    it "should make the find movies with same director result available to the template"  do
      movie="13"
      fake="fake out"
      Movie.should_receive(:find_with_same_director).with(movie).and_return(fake)
      post :find_with_same_director, { :movie_id => "13" }
      assigns(:movies).should == fake
    end
  end
end
