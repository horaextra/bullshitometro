class Bullshit
  BULLSHIT_LIST = [ "sinergia"]
  def self.is_bullshit? word
    BULLSHIT_LIST.include? word
  end
end 
