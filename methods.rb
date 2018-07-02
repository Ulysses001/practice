# 5.times.class
# ([] .methods - 5.times.methods).count
# puts ([] .methods - 5.times.methods).count

20.times { print "$" }
10.times { puts "$" } ,10.times { print "$" }
20.times { print "$" }

def intro
    puts "This is Coin Flip"
    puts "Please enter your name: "

    main_char = gets.chomp.strip
    puts "Hi #{main_char} please take a guess, Heads or Tails"
    
    return main_char
end
guess = gets.chomp.strip
    puts "Hi, please take a guess, Heads or Tails #{guess}"
   ans = 1 + rand(2)

if (guess = ans) 
    puts "You Win!"
 else  puts "That Sucks, Try Again"
end