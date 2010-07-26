require 'spec_helper'

describe RatingsController do

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
  
  describe "POST /ratings" do
    before  do
      @rating = { :text => "text"}
      Rating.stub!(:rate).with("text").and_return(1)
    end 
    it "should initialize a new rating " do
      Rating.should_receive(:rate).with("text")
      valid_post
    end 
    it "should assigns the retrieved rating to the variable 'rating'" do
      valid_post
      assigns[:rate].should be_eql(1)
    end 
    
    it "should assigns the text inputed to the variable 'text'" do
      valid_post
      assigns[:text].should == "text"
    end
    
    private 
    def valid_post
      post :create, @rating
    end 
  end   
end
