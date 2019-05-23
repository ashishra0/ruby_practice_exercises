# Build a program that reverse the words in a string, where the words are seprated by one or more spaces
require 'rspec'

test_sentence = "backwards am I"

def reverse_sentence(test_sentence)
  test_sentence.split.reverse.join(' ')
end



describe "reverse sentence" do
  it "reverses the words in a sentence" do
    test_sentence = "backwards am I"
    expect(reverse_sentence(test_sentence)).to eq("I am backwards")
  end
end