# fizzbuzz coding challenge

require 'rspec'

def hashed_fizz_buzz(num)
  arr = (1..num).to_a
  hash = Hash.new
  arr.each do |n|
    if (n % 3 == 0) && (n % 5 == 0)
      hash[n] = "FizzBuzz"
    elsif (n % 3 == 0)
      hash[n] = "Fizz"
    elsif (n % 5 == 0)
      hash[n] = "Buzz"
    else
      hash[n] = n
    end
  end
  hash
end

describe "Hashed FizzBuzz" do
  it 'generates a fizz buzz hash' do
    final_hash = {1=>1,
      2=>2,
      3=>"Fizz",
      4=>4,
      5=>"Buzz",
      6=>"Fizz",
      7=>7,
      8=>8,
      9=>"Fizz",
      10=>"Buzz",
      11=>11,
      12=>"Fizz",
      13=>13,
      14=>14,
      15=>"FizzBuzz",
      16=>16,
      17=>17,
      18=>"Fizz",
      19=>19,
      20=>"Buzz"}
      expect(hashed_fizz_buzz 20).to eq(final_hash)
  end
end
