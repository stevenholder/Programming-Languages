puts "Random number game\n"

number = rand(10)+1
input = 0

while input != number
  puts 'Enter a number between 1 and 10: '
  input = gets.chomp.to_i
  if input == number
    puts "You have correctly guessed the number\n"
  else
    if input > number
      puts "You guessed too high, try again!\n"
    else
      puts "You guessed too low, try again!\n"
    end
  end
end
    

