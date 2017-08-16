require 'pry'
#If you don't input anything (just hit enter) they respond with HELLO?!
#any question lower-case letters, they respond with I AM HAVING A HARD TIME HEARING YOU.
#question in all upper-case letters, respond with NO, THIS IS NOT A PET STORE
#The first time you say GOODBYE! they say ANYTHING ELSE I CAN HELP WITH?
#The second time you say GOODBYE! they say THANK YOU FOR CALLING! and the program exits.

def capital_checker(talk) #return false if there's a lowercase letter
  lower_case = ('a'..'z').to_a
  i = 0
  n = talk.length - 1
  while i < n
    lower_case.each do |char|
      if talk[i] == char
        return false
      end
    end
    i += 1
  end
  return true
end


quitcount = 0
ready_to_quit = false
puts "HELLO, THIS IS A GROCERY STORE!"
print ">"

until ready_to_quit

input = gets.chomp


  if input == "GOODBYE" && quitcount == 0
    puts 'ANTHING ELSE I CAN HELP YOU WITH?'
    quitcount += 1
  elsif input == "GOODBYE" && quitcount == 1
    ready_to_quit = true
  end

  #respond to empty input
   if input == ""
    puts "HELLO?!"
   end

   #respond to lowercase letter.
  if capital_checker(input) == false && input != "GOODBYE"
    puts 'I AM HAVING A HARD TIME HEARING YOU.'
  elsif capital_checker(input) && input != "" && input != "GOODBYE"
    puts 'NO, THIS IS NOT A PET STORE'
  end

end

puts "THANK YOU FOR CALLING!"
