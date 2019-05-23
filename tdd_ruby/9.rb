# High Low guessing game commonly used in basic interview rounds

def game
  num = rand 25
  puts "Guess a number between 0 and 24"
  loop do
    user_prompt = gets.to_i
    if user_prompt > num
      puts "lower - guess again"
    elsif user_prompt < num
      puts "higher - guess again"
    elsif user_prompt == num
      puts "Yay, you got it right"
      break
    end
  end
end

game