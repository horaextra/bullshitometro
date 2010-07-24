require "spec_helper"

describe Bullshit do
  describe ".is_bullshit?" do
    it "should verify if the given word is on the bullshit list" do
      Bullshit.is_bullshit?("sinergia").should be_true
      Bullshit.is_bullshit?("unitario").should be_false
    end
  end
end