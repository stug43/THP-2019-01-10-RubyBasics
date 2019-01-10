def ask_first_name()
	puts "What's your first name?"
	print "> "
	return gets.chomp
end

def say_hello(first_name)
	puts "Bonjour, #{first_name}!"
end

def perform
	say_hello(ask_first_name)
end

perform
