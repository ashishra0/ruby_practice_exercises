# Finding the largest item in an array
require 'rspec'

test_array = [1, 3, 5, 10, 4, 6, 9, 2]

def new_max(test_array)
  max = 0
  test_array.each do |i|
    if i > max
      max = i
    end
  end
  max
end

describe 'New max method' do
  it 'returns the max value from an array efficiently' do
    test_array = [2, 4, 10, 3, 1]
    expect(new_max(test_array)).to eq(10)
  end
end