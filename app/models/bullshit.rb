class Bullshit
  def self.is_bullshit? word
    @bullshits = YAML.load_file("#{RAILS_ROOT}/db/bullshits.yml")
    @bullshits.include? word 
  end
end 
