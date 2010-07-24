class Rating
  def self.rate(text)
    text.split.select { |word| Bullshit.is_bullshit?(word) }.size
  end
end 