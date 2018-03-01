def start
  low = 1
  high = 25
  guess = rand(low..high)
  p "Please select a number between 1 and 100 and I will try to guess it."
  cpuguess(guess, low, high)
end

def cpuguess(guess, low, high)
  sleep 2
  p "Is your number #{guess}? Y/N"
  response = gets.chomp!
  if response.downcase == "y"
    endgame
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

  def endgame
    p "Would you like to play again? Y/N"
    response = gets.chomp!
    if response.downcase == "y"
      start
    else
      p "Thank you for playing.  Good Bye"
    end
  end
end
start
