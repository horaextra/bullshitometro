require "spec_helper"

describe Bullshit do
  describe ".is_bullshit?" do
    before :each do
      @bullshits_string  = "sinergia workflow"
      @bullshit_list = ['sinergia', 'workflow']
      YAML.stub!(:load_file).with("#{RAILS_ROOT}/db/bullshits.yml").and_return(@bullshits_string)
    end 
    it "should split the string found at the bullshit's yaml dictionary" do
      @bullshits_string.should_receive(:split).and_return(@bullshit_list)
      Bullshit.is_bullshit?("sinergia")
    end 
    it "should verify if the given word is on the bullshit list" do
      Bullshit.is_bullshit?("sinergia").should be_true
      Bullshit.is_bullshit?("unitario").should be_false
    end
    it "should load the list of known bullshits" do
      YAML.should_receive(:load_file).with("#{RAILS_ROOT}/db/bullshits.yml")
      Bullshit.is_bullshit?("foo")
    end 
  end
end