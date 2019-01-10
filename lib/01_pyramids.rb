#!/usr/bin/env ruby
def welcome_message
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	nb_stairs = gets.chomp.to_i
	puts "Voici la pyramide :"
	return nb_stairs
end

def half_pyramid
	nb_stairs=welcome_message
	stair=0
	nb_stairs.times do
		stair+=1
		(nb_stairs-stair).times do
			print " "
		end
		stair.times do
			print "#"
		end
		puts ""
	end
end

def full_pyramid_building(nb_stairs,increment=1,stair=0,offset=0)
	nb_stairs.times do
		stair=stair+increment
		(nb_stairs+offset-stair).times do
			print " "
		end
		(2*stair-1).times do
			print "#"
		end
	puts ""
	end
return stair
end

def full_pyramid
	nb_stairs=welcome_message
	full_pyramid_building(nb_stairs,increment=1,stair=0,offset=0)
end

def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	nb_stairs_tot = gets.chomp.to_i

	if nb_stairs_tot % 2 == 0
		puts "Nombre pair. Je t'envoie bouler."
		return
	else
		puts "Voici la pyramide :"
		nb_stairs= (nb_stairs_tot+1)/2
		stair = full_pyramid_building(nb_stairs,1)
		full_pyramid_building(nb_stairs-1,increment=-1,stair,offset=1)
	end
end

def perform
	puts "Fonction half_pyramid :"
	puts "======================="
	puts ""
	half_pyramid
	puts ""
	puts "Fonction full_pyramid :"
	puts "======================="
	puts ""
	full_pyramid
	puts ""
	puts "Fonction wtf_pyramid :"
	puts "======================="
	puts ""
	wtf_pyramid
end

perform


