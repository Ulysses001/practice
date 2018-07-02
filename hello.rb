# dead_people = ["Etheal, "Mortimer,"Buford"]
# alive_people = ["Kelly", "Joe", "Magan"]

# name = "Mortimer"

# if alive_people.include? name
# puts "Send questionnaire to #{name}."
# else 
 
# puts "don't Send questtionnare to #{name}."  
# else ifSicl_people.include? name
# puts "don't Send questionnare to #{name}
# end

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