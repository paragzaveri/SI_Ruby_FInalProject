module NationalBasketballAssociation
	def nba_simulate_season(league_1,league_2)
		while @nba_game_count <= 1229
			keys_1 = league_1.keys
			keys_2 = league_2.keys
			first_team = keys_1[rand(15)]
			second_team = keys_2[rand(15)]

			if ((league_1["#{first_team}"][0] + league_1["#{first_team}"][1]) < 82) && ((league_2["#{second_team}"][0] + league_2["#{second_team}"][1]) < 82)

				puts "\nThe game is between the #{first_team} and the #{second_team}."
				puts "\nFinal Score:"
		
				print "\n#{first_team}: "
				first_team_score = 50 + rand(75)
				print "#{first_team_score}"
				print "\n#{second_team}: "
				second_team_score = 50 + rand(75)
				print "#{second_team_score}"

				#nba_simulate_season(league_1,league_2) if (first_team_score == second_team_score)	
				nba_calculate_league_standings(first_team,second_team,first_team_score,second_team_score,league_1,league_2)
				@nba_game_count += 1		
			else
				#nba_simulate_season(league_1,league_2)
			end
		end	
	end
	def nba_generate_conference_game(league)
		keys = league.keys
 		first_team = keys[rand(15)]
		second_team = keys[rand(15)]

		if ((league["#{first_team}"][0] + league["#{first_team}"][1]) < 82) && ((league["#{second_team}"][0] + league["#{second_team}"][1]) < 82)

			if first_team == second_team
				puts "\nSorry, there was a glitch."
				nba
			else
			end
			puts "\nThe game is between the #{first_team} and the #{second_team}."
			puts "\nWhat was the final score?"
			print "\n#{first_team}: "
			first_team_score = gets.chomp.to_i
			print "#{second_team}: "
			second_team_score = gets.chomp.to_i
		
			if (first_team_score == second_team_score)
				puts "\nSorry there cannot be a tie in an NBA Game: Regenerating..."
				nba_generate_conference_game(league)
			else
				nba_calculate_conference_standings(first_team,second_team,first_team_score,second_team_score,league)
				@nba_game_count += 1
			end
		else
			puts "Sorry teams have played 82 games already this season.  Try again?"
		end
	end

	def nba_generate_league_game(league_1,league_2)
		keys_1 = league_1.keys
		keys_2 = league_2.keys
		first_team = keys_1[rand(15)]
		second_team = keys_2[rand(15)]

		if ((league_1["#{first_team}"][0] + league_1["#{first_team}"][1]) < 82) && ((league_2["#{second_team}"][0] + league_2["#{second_team}"][1]) < 82)

			puts "\nThe game is between the #{first_team} and the #{second_team}."
			puts "\nWhat was the final score?"
		
			print "\n#{first_team}: "
			first_team_score = gets.chomp.to_i
			print "#{second_team}: "
			second_team_score = gets.chomp.to_i
			if (first_team_score == second_team_score)
				puts "\nSorry there cannot be a tie in an NBA Game: Regenerating..."
				nba_generate_league_game(league_1,league_2)
			else
				nba_calculate_league_standings(first_team,second_team,first_team_score,second_team_score,league_1,league_2)
				@nba_game_count += 1	
			end	
		else
			puts "Sorry teams have played 82 games already this season.  Try again?"
		end
		
	end

	def nba_calculate_conference_standings(first_team,second_team,first_team_score,second_team_score,league)
		if first_team_score > second_team_score
			puts "\nThe #{first_team} Win!"
			league["#{first_team}"][0] += 1
			league["#{second_team}"][1] += 1
		elsif second_team_score > first_team_score
			puts "\nThe #{second_team} Win!"
			league["#{second_team}"][0] += 1
			league["#{first_team}"][1] += 1
		else
		end
	end
	def nba_calculate_league_standings(first_team,second_team,first_team_score,second_team_score,league_1,league_2)
		if first_team_score > second_team_score
			puts "\n\nThe #{first_team} Win!"
			league_1["#{first_team}"][0] += 1
			league_2["#{second_team}"][1] += 1
		elsif second_team_score > first_team_score
			puts "\n\nThe #{second_team} Win!"
			league_2["#{second_team}"][0] += 1
			league_1["#{first_team}"][1] += 1
		else
		end
	end

	def nba_print_league_standings(overall_name,league_1_name,league_2_name,division_1_name,division_2_name,division_3_name,division_4_name,division_5_name,division_6_name,division_1,division_2,division_3,division_4,division_5,division_6)
		division_1 = division_1.sort_by{|key,value| value[0]}.reverse
		division_2 = division_2.sort_by{|key,value| value[0]}.reverse
		division_3 = division_3.sort_by{|key,value| value[0]}.reverse
		division_4 = division_4.sort_by{|key,value| value[0]}.reverse
		division_5 = division_5.sort_by{|key,value| value[0]}.reverse
		division_6 = division_6.sort_by{|key,value| value[0]}.reverse
	
		puts "\n\n\n#{overall_name}"
		puts "\n\n\n#{league_1_name}"
		puts "\n\n"
		puts "#{division_1_name}"
		puts "\n"
		division_1.each do |k,v|
			puts k
			puts v.inspect
		end
		puts "\n#{division_2_name}"
		puts "\n"
		division_2.each do |k,v|
			puts k
			puts v.inspect
		end
		puts "\n#{division_3_name}"
		puts "\n"
		division_3.each do |k,v|
			puts k
			puts v.inspect
		end
		puts "\n\n\n#{league_2_name}"
		puts "\n\n"
		puts "#{division_4_name}"
		puts "\n"
		division_4.each do |k,v|
			puts k
			puts v.inspect
		end
		puts "\n#{division_5_name}"
		puts "\n"
		division_5.each do |k,v|
			puts k
			puts v.inspect
		end
		puts "\n#{division_6_name}"
		puts "\n"
		division_6.each do |k,v|
			puts k
			puts v.inspect
		end
	end
end
