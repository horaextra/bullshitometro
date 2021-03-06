require "spec_helper"

describe Rating do
  describe ".rate" do
    it "should verify if a given word is a bullshit" do 
      Bullshit.should_receive("is_bullshit?").with("foo")
      Rating.rate("foo")
    end
    
    it "should return zero for no bullshit" do
      Bullshit.stub!("is_bullshit?").with("foo").and_return(false)
      Rating.rate("foo").should == 0
    end

    it "should return one for one bullshit" do
      Bullshit.stub!("is_bullshit?").with("foo").and_return(true)
      Rating.rate("foo").should == 1
    end

    context "when counting bullshits in a text" do
      before do
        Bullshit.stub!("is_bullshit?").with("foo").and_return(true)
        Bullshit.stub!("is_bullshit?").with("bar").and_return(false)
      end 
      
      it "should return 1 for a bullshit found" do
        Rating.rate("foo").should == 1 
      end 
      it "should return 0 for no bullshit" do
        Rating.rate("bar").should == 0
      end   
      it "should return the number of bullshits found in a given text"  do
        Rating.rate("foo bar").should == 1
      end 
    end 
  end 
end 