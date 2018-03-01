==================================CRAIGS CODE============================
system("clear")
puts "Think of a number between 1 and 25 I will figure it out."
sleep(2)
p 'READY'
sleep(1)
p 'SET'
sleep(1)
p 'GO'

sleep(1)

my_arr = [*1..25]

correct = "N"

until correct == "Y" do
  guess = my_arr.sample
  puts "Is the answer #{guess}? (Y/N)"
  correct = gets.chomp!.upcase

  if correct == "Y"
    puts "NAILED IT!"
  else
    puts "is it higher of lower than #{guess}? (select 'H' for Higher and 'L' for Lower.)"
    hint = gets.chomp!.upcase
    if hint == "H"
      my_arr.delete_if {|x| x <= guess}
    else
      my_arr.delete_if {|x| x >= guess}
    end
  end
end
============================SHAUN CODE======================
r = (1..25)
secret = rand(r)
turns = 0

puts "Guess a number between #{r.min} and #{r.max}"
r.bsearch do |guess|                # bsearch works on ranges
 print "Guessing #{guess} \t"
 turns += 1
 low_high = secret <=> guess       # -1, 0, or 1
 puts ["found the number in #{turns} turns", "too low", "too high"][low_high]
 low_high
end
