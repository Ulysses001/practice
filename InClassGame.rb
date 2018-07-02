# Student Loan Adventure Game 
# 

# Intro Message to User 

# Create Script Variables 

# monsters = ["Federal Subsidised Loans", "Sally Mae", "Freddie Mac"]

# Abstract into methods

# Method to get user and display game intro
def intro
    puts "Welcome to the Student Loan Adventure"
    puts "Please enter your name: "

    main_char = gets.chomp.strip
    puts "Welcome #{main_char} to the mean streets of life as a recent college grad. \n 
          To pay back your loans in a timely fashion you will have to get a job, 
          make yours payments on time, and all around be awesome."
    
    return main_char
end

# method obtains the users debt
def how_much_debt(character)
    puts "#{main_char}, how much student debt did you accrue?"
    debt = gets.chomp 
    debt = verify_debt(debt)
    
    return debt
end

def verify_debt(debt)
    if (debt.include?(("a".."z").to_a.join))
        puts "Enter a valid num"
        how_much_debt()
    elsif (debt.include? ".")
        debt = debt.to_f 
    else 
        debt = debt.to_i
    end

    return debt
end

def main 
    main_char = intro()
    debt = how_much_debt(main_char)
end

main()


### SORT OF PROCEDURAL

# if (debt.include?(("a".."z").to_a.join))
#     puts "give me a valid number"
#     debt = gets.chomp
# elsif (debt.include? ".")
#     debt = debt.to_f
# else
#     debt = debt.to_i
# end

# while (true)
#     if ((debt.is_a? Integer) || (debt.is_a? Float))
#         break
#     else 
#         puts "Please enter a valid number"
#         debt = gets.chomp
#     end
# end

# if (debt < 10000) 
#     puts "Stop whining and get to work"
# elsif (debt >= 10000 || debt < 50000)
#     puts "That sucks, but maybe you can get married and buy a house some day"
# elsif (debt >= 50000 || debt  < 100000)
#     puts "You got played, sucker. Get to work you can't bankrupt this problem away."
# else (debt >= 100000)
#     puts "Change your identity and move to a remote island!"
# end
