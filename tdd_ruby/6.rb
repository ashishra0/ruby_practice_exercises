# Fibonacci Sequence
require 'rspec'


def fibonacci(num)
  num.times.inject([0,1]) { |fib| fib << fib.last(2).inject(:+)}
end

describe "Fibonacci" do
  it 'properly calculates the fibonacci value' do
    expect(fibonacci 10).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
  end
end