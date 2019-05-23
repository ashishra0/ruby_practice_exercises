# Generating a hash with two arrays

require 'rspec'

def hash_builder(headers, data)
  hash = Hash.new
  headers.each_with_index do | header, index| 
    hash[header] = data[index]
  end
  hash
end

describe 'hash builder' do
  it "builds a hash by combining two arrays" do
    arr_1 = ['title', 'description', 'rating']
    arr_2 = ['Fountainhead', 'Novel about unique perspectives', 5]
    expect(hash_builder arr_1, arr_2).to eq({
      "title"=>"Fountainhead",
      "description" => "Novel about unique perspectives",
      "rating" => 5
    })
  end
end