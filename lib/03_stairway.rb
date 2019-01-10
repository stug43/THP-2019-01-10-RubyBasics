#!/usr/bin/env ruby
def game_start
	puts
	puts "====================================================="	
	puts "                 LE JEU DE L'ANNEE        "
	puts "====================================================="
	puts
	return 1
end

def dice_roll(sleep_time_in_sec=0)
	puts "====================================================="
	puts "                  LANCER DE DE"
    puts "====================================================="
    puts
	puts "> Tu lances.... "
	puts
	sleep(sleep_time_in_sec)
	print "> Ton résultat : "
	dice_result=1 + Random.rand(6)
	puts dice_result
	return dice_result
end

def result_dice_roll(dice_result,step_number)
	case dice_result
	when 5,6
		puts ""
		puts "Tu avances d'une marche"
		puts ""
		step_number+=1
	when 1
		puts ""
		puts "Tu descends d'une marche"
		puts ""
		step_number-=1 if (step_number >= 1)
	when 2,3,4
		puts ""
		puts "Rien ne se passe"
		puts ""
	end
	puts "Ta marche actuelle : #{step_number} "
	puts
	return step_number


end

def game(dice_roll_duration_in_sec=0)
	step_number=game_start()
	while step_number <10
		dice_result=dice_roll(dice_roll_duration_in_sec)
		step_number=result_dice_roll(dice_result,step_number)
	end
	puts "====================================================="
	puts "                  TU AS GAGNE!"
    puts "====================================================="

end
def average_finish_time
	t1 = Time.now
	100.times {game}
	t2 = Time.now
	average_finish_duration = (t2 - t1)/100 
	puts "====================================================="
	puts "                  100 PARTIES SIMULEES			"
    puts "====================================================="
    puts
	puts "Average finish time : #{average_finish_duration}"
	puts "====================================================="
end

def perform
	average_finish_time
	# game
end

perform

