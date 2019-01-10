#!/usr/bin/env ruby
def sign_up
	puts
	puts "====================================================="	
	puts "                      SIGN UP          "
	puts "====================================================="
	puts
	puts "Hi, please define your password:"
	print "> "
	password = gets.chomp.to_s
	puts "Password saved"
	puts "Your password is: #{password}"
	puts
	return password

end


def login(password)
	puts
	puts "====================================================="
	puts "                      LOGIN"
    puts "====================================================="
	puts
	print "> Enter your password: "
	entered_password = gets.chomp.to_s
	case entered_password
	when password
		puts
		puts "Correct!"
		welcome_screen
	else
		puts
		puts "Incorrect password!"
		puts
		puts "Would you like to try again?"
		print " (enter yes, otherwise any key)> "
		choice = gets.chomp.to_s
		case choice
		when "yes"
			login(password)
		else
		end
	end
end

def welcome_screen

puts
puts "====================================================="	
puts "           SECRET AREA - WELCOME SCREEN"
puts "====================================================="
puts ""
puts "________________________________█████_____█████"
puts "______________________________███____██_██_____███"
puts "_____________________________██________██__________██"
puts "____________________________██__________█____________██"
puts "________██████____________██________________________██"
puts "_____███████████________██________________________██"
puts "____█████████████_______██_______________________██"
puts "___███████████████______██______________________██"
puts "___████████████████______██___________________██"
puts "___████████████████_______██_________________██"
puts "____███████████████_______███_______________██"
puts "_______███████████_______██__██_____________██"
puts "___________███████______████___██__________██"
puts "____██████__██████████████_____██_____   ██"
puts "__██████████████████████________██__   ██"
puts "_████████████████████_____________████"
puts "██_█████_████████████_______________█"
puts "█__█_██__████████████"
puts "_____█__████████████"
puts "_______█████████████"
puts "_______██████████████"
puts "_______███████████████"
puts "________███████████████"
puts "_______███████__████████"
puts "______███████_____███████"
puts "____█████████________██████"



end

def perform
	
	password=sign_up()
	login(password)

end

perform

