# reversing a string without reverse method
require 'rspec'

def str_reverse(str)
  str_split = str.split("")
  new_str = []
  str.size.times { new_str << str_split.pop }
  new_str.join
end

describe 'letter reversing' do
  it 'reverses the letter of a string' do
    expect(str_reverse("Hi there")).to eq("ereht iH")
  end
end