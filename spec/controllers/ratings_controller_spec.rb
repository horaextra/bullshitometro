require 'spec_helper'

describe RatingsController do

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
  
  describe "POST /ratings" do
    it "should initialize a new rating " do
      rating = { :text => "text"}
      Rating.should_receive(:rate).with("text")
      post :create, rating
    end 
    it "should assigns the retrieved rating to the variable 'rating'" do
      rate = 1
      rating = { :text => "text"}
      Rating.stub!(:rate).with("text").and_return(rate)
      post :create, rating
      assigns[:rate].should be_eql(rate)
    end 
  end   
end
