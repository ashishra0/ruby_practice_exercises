# hashtag generator
require 'rspec'


def hashtag(str)
  str.split.map do |str|
    "##{str}"
  end.join(' ')
end

describe 'Hashtag generator' do
  it "takes in a string and converts each word into a hashtag" do
    str = "fun words that need to be hashtagged"
    expect(hashtag str).to eq('#fun #words #that #need #to #be #hashtagged')
  end
end