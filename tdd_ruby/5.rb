# palindrome exercise
require 'rspec'


word = "Kayak"
def palindrome?(word)
  word_split = word.downcase.split("")
  word_array = []
  word.size.times { word_array << word_split.pop }
  new_word = word_array.join
  word.downcase == new_word
end

describe 'palindrome method' do
  it 'checks if a word is a palindrome' do
    expect(palindrome?("Racecar")).to be(true)
    expect(palindrome?("Apple")).to be(false)
    expect(palindrome?("Kayak")).to be(true)
  end
end 
