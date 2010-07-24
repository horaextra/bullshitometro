class Bullshit
  def self.is_bullshit? word
    @bullshits = YAML.load_file("#{RAILS_ROOT}/db/bullshits.yml").split.map(&:downcase)
    @bullshits.include? word.match(/(\w+)/i)[0].downcase
  end
end 
