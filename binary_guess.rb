def start
  low = 1
  high = 25
  guess = rand(low..high)
  @guesses = 0
  p "Please select a number between #{low} and #{high} and I will try to guess it."
  sleep 2
  cpuguess(guess, low, high)
end

def finishgame
  p "It took me #{@guesses} to guess your number"
  p "Would you like to play again? Y/N"
  response = gets.chomp!
  if response.downcase == "y"
    start
  else
    p "Thank you for playing.  Good Bye"
  end
end

def cpuguess(guess, low, high)

  p "Is your number #{guess}? Y/N"
  response = gets.chomp!
  @guesses = @guesses + 1
  if response.downcase == "y"
    finishgame
  else
    p "Is your number higher or lower  H/L"
    response = gets.chomp!

    if response.downcase == "h"
      low = guess + 1
      guess = rand(low..high)
      cpuguess(guess, low, high)
    else
      high = guess
      guess = rand(low...high)
      cpuguess(guess, low, high)
    end
  end
end
start
