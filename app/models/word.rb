class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(word)
  	sorted = word.downcase.chars.sort.join
  	Word.where(downcase: sorted).map{|word| word.name}
  end
end
