module MajorLeagueBaseball
	def mlb_simulate_season(league_1,league_2)
		while @mlb_game_count <= 2429
			keys_1 = league_1.keys
			keys_2 = league_2.keys
			first_team = keys_1[rand(15)]
			second_team = keys_2[rand(15)]

			if ((league_1["#{first_team}"][0] + league_1["#{first_team}"][1]) < 162) && ((league_2["#{second_team}"][0] + league_2["#{second_team}"][1]) < 162)

				puts "\nThe game is between the #{first_team} and the #{second_team}."
				puts "\nFinal Score:"
		
				print "\n#{first_team}: "
				first_team_score = rand(10)
				print "#{first_team_score}"
				print "\n#{second_team}: "
				second_team_score = rand(10)
				print "#{second_team_score}"

				mlb_simulate_season(league_1,league_2) if (first_team_score == second_team_score)	
				mlb_calculate_interleague_standings(first_team,second_team,first_team_score,second_team_score,league_1,league_2)
				@mlb_game_count += 1		
			else
				mlb_simulate_season(league_1,league_2)
			end
		end	
	end
	def mlb_generate_league_game(league)
		keys = league.keys
 		first_team = keys[rand(15)]
		second_team = keys[rand(15)]

		if ((league["#{first_team}"][0] + league["#{first_team}"][1]) < 162) && ((league["#{second_team}"][0] + league["#{second_team}"][1]) < 162)

			if first_team == second_team
				puts "\nSorry, there was a glitch."
				mlb
			else
			end
			puts "\nThe game is between the #{first_team} and the #{second_team}."
			puts "\nWhat was the final score?"
			print "\n#{first_team}: "
			first_team_score = gets.chomp.to_i
			print "#{second_team}: "
			second_team_score = gets.chomp.to_i
		
			if (first_team_score == second_team_score)
				puts "\nSorry there cannot be a tie in an MLB Game: Regenerating..."
				mlb_generate_league_game(league)
			else
				mlb_calculate_league_standings(first_team,second_team,first_team_score,second_team_score,league)
				@mlb_game_count += 1
			end
		else
			puts "Sorry teams have played 162 games already this season."
		end
	end

	def mlb_generate_interleague_game(league_1,league_2)
		keys_1 = league_1.keys
		keys_2 = league_2.keys
		first_team = keys_1[rand(15)]
		second_team = keys_2[rand(15)]

		if ((league_1["#{first_team}"][0] + league_1["#{first_team}"][1]) < 162) && ((league_2["#{second_team}"][0] + league_2["#{second_team}"][1]) < 162)

			puts "\nThe game is between the #{first_team} and the #{second_team}."
			puts "\nWhat was the final score?"
		
			print "\n#{first_team}: "
			first_team_score = gets.chomp.to_i
			print "#{second_team}: "
			second_team_score = gets.chomp.to_i
			if (first_team_score == second_team_score)
				puts "\nSorry there cannot be a tie in an NBA Game: Regenerating..."
				mlb_generate_interleague_game(league_1,league_2)
			else
				mlb_calculate_interleague_standings(first_team,second_team,first_team_score,second_team_score,league_1,league_2)
				@mlb_game_count += 1	
			end	
		else
			puts "Sorry teams have played 162 games already this season."
		end
		
	end

	def mlb_calculate_league_standings(first_team,second_team,first_team_score,second_team_score,league)
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
	def mlb_calculate_interleague_standings(first_team,second_team,first_team_score,second_team_score,league_1,league_2)
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

	def mlb_print_league_standings(overall_name,league_1_name,league_2_name,league_1,league_2)
		league_1 = league_1.sort_by{|key,value| value[0]}.reverse
		league_2 = league_2.sort_by{|key,value| value[0]}.reverse
		puts "\n\n\n#{overall_name}"
		puts "\n\n\n#{league_1_name}"
		puts "\n\n"
		league_1.each do |k,v|
			puts k
			puts v.inspect
		end
		puts "\n\n\n#{league_2_name}"
		puts "\n\n"
		league_2.each do |k,v|
			puts k
			puts v.inspect
		end
	end
end
