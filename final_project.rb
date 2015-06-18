require './nba_module.rb'
require './nfl_module.rb'
require './nhl_module.rb'
require './mlb_module.rb'

class Overall
	include NationalBasketballAssociation
	include NationalFootballLeague
	include NationalHockeyLeague
	include MajorLeagueBaseball
	def initialize(name)
	
	###############################################################################################################################################################################################################################################################################################################################################	
	#NBA
	###############################################################################################################################################################################################################################################################################################################################################		
		@nba_eastern_name = "Eastern Conference"
		@nba_western_name = "Western Conference"
		@nba_name = "National Basketball Association"

		@nba_eastern_array = ["Boston Celtics","Brooklyn Nets","New York Knicks","Philadelphia 76ers","Toronto Raptors","Chicago Bulls","Cleveland Cavaliers","Detroit Pistons","Indiana Pacers","Milwaukee Bucks","Atlanta Hawks","Charlotte Hornets","Miami Heat","Orlando Magic","Washington Wizards"]
		@nba_western_array = ["Dallas Mavericks","Houston Rockets","Memphis Grizzlies","New Orleans Pelicans","San Antonio Spurs","Denver Nuggets","Minnesota Timberwolves","Oklahoma City Thunder","Portland Trail Blazers","Utah Jazz","Golden State Warriors","Los Angeles Clippers","Los Angeles Lakers","Phoenix Suns","Sacramento Kings"]
		
		@nba_atlantic_eastern_hash = {
			"Boston Celtics" => [0,0],
			"Brooklyn Nets" => [0,0],
			"New York Knicks" => [0,0],
			"Philadelphia 76ers" => [0,0],
			"Toronto Raptors" => [0,0]
		}

		@nba_central_eastern_hash = {
			"Chicago Bulls" => [0,0],
			"Cleveland Cavaliers" => [0,0],
			"Detroit Pistons" => [0,0],
			"Indiana Pacers" => [0,0],
			"Milwaukee Bucks" => [0,0]
		}

		@nba_southeast_eastern_hash = {
			"Atlanta Hawks" => [0,0],
			"Charlotte Hornets" => [0,0],
			"Miami Heat" => [0,0],
			"Orlando Magic" => [0,0],
			"Washington Wizards" => [0,0]
		}

		@nba_eastern_hash = @nba_atlantic_eastern_hash.merge(@nba_central_eastern_hash).merge(@nba_southeast_eastern_hash)
		# @nba_eastern_hash = {
		# 	"Boston Celtics" => [0,0],
		# 	"Brooklyn Nets" => [0,0],
		# 	"New York Knicks" => [0,0],
		# 	"Philadelphia 76ers" => [0,0],
		# 	"Toronto Raptors" => [0,0],
		# 	"Chicago Bulls" => [0,0],
		# 	"Cleveland Cavaliers" => [0,0],
		# 	"Detroit Pistons" => [0,0],
		# 	"Indiana Pacers" => [0,0],
		# 	"Milwaukee Bucks" => [0,0],
		# 	"Atlanta Hawks" => [0,0],
		# 	"Charlotte Hornets" => [0,0],
		# 	"Miami Heat" => [0,0],
		# 	"Orlando Magic" => [0,0],
		# 	"Washington Wizards" => [0,0]
		# }

		@nba_western_hash = {
			"Dallas Mavericks" => [0,0],
			"Houston Rockets" => [0,0],
			"Memphis Grizzlies" => [0,0],
			"New Orleans Pelicans" => [0,0],
			"San Antonio Spurs" => [0,0],
			"Denver Nuggets" => [0,0],
			"Minnesota Timberwolves" => [0,0],
			"Oklahoma City Thunder" => [0,0],
			"Portland Trail Blazers" => [0,0],
			"Utah Jazz" => [0,0],
			"Golden State Warriors" => [0,0],
			"Los Angeles Clippers" => [0,0],
			"Los Angeles Lakers" => [0,0],
			"Phoenix Suns" => [0,0],
			"Sacramento Kings" => [0,0]
		}

		@nba_game_count = 0

	###############################################################################################################################################################################################################################################################################################################################################	
	#NFL
	###############################################################################################################################################################################################################################################################################################################################################		
		
		@nfl_afc_name = "American Football Conference"
		@nfl_nfc_name = "National Football Conference"
		@nfl_name = "National Football League"

		@nfl_afc_array = ["Buffalo Bills","Miami Dolphins","New England Patriots","New York Jets","Baltimore Ravens","Cincinnati Bengals","Cleveland Browns","Pittsburgh Steelers","Houston Texans","Indianapolis Colts","Jacksonville Jaguars","Tennessee Titans","Denver Broncos","Kansas City Chiefs","Oakland Raiders","San Diego Chargers"]
		@nfl_nfc_array = ["Dallas Cowboys","New York Giants","Philadelphia Eagles","Washington Redskins","Chicago Bears","Detroit Lions","Green Bay Packers","Minnesota Vikings","Atlanta Falcons","Carolina Panthers","New Orleans Saints","Tampa Bay Buccaneers","Arizona Cardinals","St. Louis Rams","San Francisco 49ers","Seattle Seahawks"]



		@nfl_afc_hash = {
			"Buffalo Bills" => [0,0,0],
			"Miami Dolphins" => [0,0,0],
			"New England Patriots" => [0,0,0],
			"New York Jets" => [0,0,0],
			"Baltimore Ravens" => [0,0,0],
			"Cincinnati Bengals" => [0,0,0],
			"Cleveland Browns" => [0,0,0],
			"Pittsburgh Steelers" => [0,0,0],
			"Houston Texans" => [0,0,0],
			"Indianapolis Colts" => [0,0,0],
			"Jacksonville Jaguars" => [0,0,0],
			"Tennessee Titans" => [0,0,0],
			"Denver Broncos" => [0,0,0],
			"Kansas City Chiefs" => [0,0,0],
			"Oakland Raiders" => [0,0,0],
			"San Diego Chargers" => [0,0,0]
		}

		@nfl_nfc_hash = {
			"Dallas Cowboys" => [0,0,0],
			"New York Giants" => [0,0,0],
			"Philadelphia Eagles" => [0,0,0],
			"Washington Redskins" => [0,0,0],
			"Chicago Bears" => [0,0,0],
			"Detroit Lions" => [0,0,0],
			"Green Bay Packers" => [0,0,0],
			"Minnesota Vikings" => [0,0,0],
			"Atlanta Falcons" => [0,0,0],
			"Carolina Panthers" => [0,0,0],
			"New Orleans Saints" => [0,0,0],
			"Tampa Bay Buccaneers" => [0,0,0],
			"Arizona Cardinals" => [0,0,0],
			"St. Louis Rams" => [0,0,0],
			"San Francisco 49ers" => [0,0,0],
			"Seattle Seahawks" => [0,0,0]
		}

		@nfl_game_count = 0


	###############################################################################################################################################################################################################################################################################################################################################	


	###############################################################################################################################################################################################################################################################################################################################################	
	#NHL
	###############################################################################################################################################################################################################################################################################################################################################		
	
		@nhl_eastern_name = "Eastern Conference"
		@nhl_western_name = "Western Conference"
		@nhl_name = "National Hockey League"

		@nhl_eastern_array = ["Boston Bruins","Buffalo Sabres","Detroit Red Wings","Florida Panthers","Montreal Canadiens","Ottawa Senators","Tampy Bay Lightning","Toronto Maple Leafs","Carolina Hurricanes","Columbus Blue Jackets","New Jersey Devils","New York Islanders","New York Rangers","Philadelphia Flyers","Pittsburgh Penguins","Washington Capitals"]
		@nhl_western_array = ["Anaheim Ducks","Arizona Coyotes","Calgary Flames","Edmontom Oilers","Los Angeles Kings","San Jose Sharks","Vancouver Canucks","Chicago Blackhawks","Colorado Avalanche","Dallas Stars","Minnesota Wild","Nashville Predators","St. Louis Blues","Winnipeg Jets"]

		@nhl_eastern_hash = {
			"Boston Bruins" => [0,0,0],
			"Buffalo Sabres" => [0,0,0],
			"Detroit Red Wings" => [0,0,0],
			"Florida Panthers" => [0,0,0],
			"Montreal Canadiens" => [0,0,0],
			"Ottawa Senators" => [0,0,0],
			"Tampa Bay Lightning" => [0,0,0],
			"Toronto Maple Leafs" => [0,0,0],
			"Carolina Hurricanes" => [0,0,0],
			"Columbus Blue Jackets" => [0,0,0],
			"New Jersey Devils" => [0,0,0],
			"New York Islanders" => [0,0,0],
			"New York Rangers" => [0,0,0],
			"Philadelphia Flyers" => [0,0,0],
			"Pittsburgh Penguins" => [0,0,0],
			"Washington Capitals" => [0,0,0]
		}

		@nhl_western_hash = {
			"Anaheim Ducks" => [0,0,0],
			"Arizona Coyotes" => [0,0,0],
			"Calgary Flames" => [0,0,0],
			"Edmonton Oilers" => [0,0,0],
			"Los Angeles Kings" => [0,0,0],
			"San Jose Sharks" => [0,0,0],
			"Vancouver Canucks" => [0,0,0],
			"Chicago Blackhawks" => [0,0,0],
			"Colorado Avalanche" => [0,0,0],
			"Dallas Stars" => [0,0,0],
			"Minnesota Wild" => [0,0,0],
			"Nashville Predators" => [0,0,0],
			"St. Louis Blues" => [0,0,0],
			"Winnipeg Jets" => [0,0,0]
		}
		@nhl_league_hash = @nhl_eastern_hash.merge(@nhl_western_hash)
		@nhl_game_count = 0

	###############################################################################################################################################################################################################################################################################################################################################		
	
	###############################################################################################################################################################################################################################################################################################################################################	
	#NHL
	###############################################################################################################################################################################################################################################################################################################################################		
		
		@mlb_al_name = "American League"
		@mlb_nl_name = "National League"
		@mlb_name = "Major League Baseball"

		@mlb_al_array = ["Baltimore Orioles","Boston Red Sox","New York Yankees","Tampa Bay Rays","Toronto Blue Jays","Chicago White Sox","Cleveland Indians","Detroit Tigers","Kansas City Royals","Minnesota Twins","Houston Astros","Los Angeles Angels of Anaheim","Oakland Athletics","Seattle Mariners","Texas Rangers"]
		@mlb_nl_array = ["Atlanta Braves","Miami Marlins","New York Mets","Philadelphia Phillies","Washington Nationals","Chicago Cubs","Cincinnati Reds","Milwaukee Brewers","Pittsburgh Pirates","St. Louis Cardinals","Arizona Diamondbacks","Colorado Rockies","Los Angeles Dodgers","San Diego Padres","San Francisco Giants"]
		
		@mlb_al_hash = {
			"Baltimore Orioles" => [0,0],
			"Boston Red Sox" => [0,0],
			"New York Yankees" => [0,0],
			"Tampa Bay Rays" => [0,0],
			"Toronto Blue Jays" => [0,0],
			"Chicago White Sox" => [0,0],
			"Cleveland Indians" => [0,0],
			"Detroit Tigers" => [0,0],
			"Kansas City Royals" => [0,0],
			"Minnesota Twins" => [0,0],
			"Houston Astros" => [0,0],
			"Los Angeles Angels of Anaheim" => [0,0],
			"Oakland Athletics" => [0,0],
			"Seattle Mariners" => [0,0],
			"Texas Rangers" => [0,0]
		}

		@mlb_nl_hash = {
			"Atlanta Braves" => [0,0],
			"Miami Marlins" => [0,0],
			"New York Mets" => [0,0],
			"Philadelphia Phillies" => [0,0],
			"Washington Nationals" => [0,0],
			"Chicago Cubs" => [0,0],
			"Cincinnati Reds" => [0,0],
			"Milwaukee Brewers" => [0,0],
			"Pittsburgh Pirates" => [0,0],
			"St. Louis Cardinals" => [0,0],
			"Arizona Diamondbacks" => [0,0],
			"Colorado Rockies" => [0,0],
			"Los Angeles Dodgers" => [0,0],
			"San Diego Padres" => [0,0],
			"San Francisco Giants" => [0,0]
		}


		@mlb_game_count = 0

	###############################################################################################################################################################################################################################################################################################################################################		
	


		puts "Welcome #{name}!"
		print "\n\nWould you like to play? (Y/N): "
		user_input = gets.chomp.upcase
		if (user_input == 'Y')
			which_league
		else
			puts "Goodbye!"
		end
	end	
	
	def which_league
		puts "\nWhich Sports League would you like to view?"
		puts "\n[1]: NBA - National Basketball Association"
		puts "[2]: NFL - National Football League"
		puts "[3]: NHL - National Hockey League"
		puts "[4]: MLB - Major League Baseball"
		puts "[5]: Exit"
		user_input = gets.chomp.to_i
		case
		when user_input == 1
			nba
		when user_input == 2
			nfl
		when user_input == 3
			nhl
		when user_input == 4
			mlb
		when user_input == 5
			exit()
		end
	end
	
	def nba
		puts "\nNational Basketball Association:"
		puts "\nWhat would you like to do?"
		puts "\n[1]: Generate Conference Game"
		puts "[2]: Generate League Game"
		puts "[3]: Simulate Season"
		puts "[4]: Print Standings"
		puts "[5]: Switch Sports League"
		puts "[6]: Exit"

		user_input = gets.chomp.to_i

		case 
		when user_input == 1
			puts "Generating Conference Game..."
			puts "\nWhich Conference?"
			puts "\n[1]: Eastern Conference"
			puts "[2]: Western Conference"
			which_conference = gets.chomp.to_i
			if which_conference == 1
				nba_generate_conference_game(@nba_eastern_hash)
				nba
			elsif which_conference == 2
				nba_generate_conference_game(@nba_western_hash)
				nba
			else
				puts "\n Sorry not a valid input."
				nba
			end
		when user_input == 2
			puts "Generating League Game..."
			nba_generate_league_game(@nba_eastern_hash,@nba_western_hash)
			nba
		when user_input == 3
			puts "Simulating Season..."
			nba_simulate_season(@nba_eastern_hash,@nba_western_hash)
			nba
		when user_input == 4
			puts "Printing Standings..."
			nba_print_league_standings(@nba_name,@nba_eastern_name,@nba_western_name,@nba_eastern_hash,@nba_western_hash)
			nba
		when user_input == 5
			puts "Switching Sports League..."
			which_league
		when user_input == 6
			exit()
		end
	end
	

	def nfl
		puts "\nNational Football League:"
		puts "\nWhat would you like to do?"
		puts "\n[1]: Generate Conference Game"
		puts "[2]: Generate League Game"
		puts "[3]: Simulate Season"
		puts "[4]: Print Standings"
		puts "[5]: Switch Sports League"
		puts "[6]: Exit"

		user_input = gets.chomp.to_i

		case 
		when user_input == 1
			puts "Generating Conference Game..."
			puts "\nWhich Conference?"
			puts "\n[1]: AFC"
			puts "[2]: NFC"
			which_conference = gets.chomp.to_i
			if which_conference == 1
				nfl_generate_conference_game(@nfl_afc_hash)
				nfl
			elsif which_conference == 2
				nfl_generate_conference_game(@nfl_nfc_hash)
				nfl
			else
				puts "\n Sorry not a valid input."
				nfl
			end
		when user_input == 2
			puts "Generating League Game..."
			nfl_generate_league_game(@nfl_afc_hash,@nfl_nfc_hash)
			nfl
		when user_input == 3
			puts "Simulating Season..."
			nfl_simulate_season(@nfl_afc_hash,@nfl_nfc_hash)
			nfl
		when user_input == 4
			puts "Printing Standings..."
			nfl_print_league_standings(@nfl_name,@nfl_afc_name,@nfl_nfc_name,@nfl_afc_hash,@nfl_nfc_hash)
			nfl
		when user_input == 5
			puts "Switching Sports League..."
			which_league
		when user_input == 6
			exit()
		end
	end

    def nhl
		puts "\nNational Hockey League:"
		puts "\nWhat would you like to do?"
		puts "\n[1]: Generate Conference Game"
		puts "[2]: Generate League Game"
		puts "[3]: Simulate Season"
		puts "[4]: Print Standings"
		puts "[5]: Switch Sports League"
		puts "[6]: Exit"

		user_input = gets.chomp.to_i

		case 
		when user_input == 1
			puts "Generating Conference Game..."
			puts "\nWhich Conference?"
			puts "\n[1]: Eastern Conference"
			puts "[2]: Western Conference"
			which_conference = gets.chomp.to_i
			if which_conference == 1
				nhl_generate_eastern_conference_game(@nhl_eastern_hash)
				nhl
			elsif which_conference == 2
				nhl_generate_western_conference_game(@nhl_western_hash)
				nhl
			else
				puts "\n Sorry not a valid input."
				nhl
			end
		when user_input == 2
			puts "Generating League Game..."
			nhl_generate_league_game(@nhl_eastern_hash,@nhl_western_hash)
			nhl
		when user_input == 3
			puts "Simulating Season..."
			nhl_simulate_season(@nhl_league_hash)
			nhl
		when user_input == 4
			puts "Printing Standings..."
			nhl_print_league_standings(@nhl_name,@nhl_eastern_name,@nhl_western_name,@nhl_eastern_hash,@nhl_western_hash)
			nhl
		when user_input == 5
			puts "Switching Sports League..."
			which_league
		when user_input == 6
			exit()
		end
	end

	def mlb
		puts "\nMajor League Baseball:"
		puts "\nWhat would you like to do?"
		puts "\n[1]: Generate League Game"
		puts "[2]: Generate Interleague Game"
		puts "[3]: Simulate Season"
		puts "[4]: Print Standings"
		puts "[5]: Switch Sports League"
		puts "[6]: Exit"

		user_input = gets.chomp.to_i

		case 
		when user_input == 1
			puts "Generating League Game..."
			puts "\nWhich League?"
			puts "\n[1]: American League"
			puts "[2]: National League"
			which_league = gets.chomp.to_i
			if which_league == 1
				mlb_generate_league_game(@mlb_al_hash)
				mlb
			elsif which_league == 2
				mlb_generate_league_game(@mlb_nl_hash)
				mlb
			else
				puts "\n Sorry not a valid input."
				mlb
			end
		when user_input == 2
			puts "Generating Interleague Game..."
			mlb_generate_interleague_game(@mlb_al_hash,@mlb_nl_hash)
			mlb
		when user_input == 3
			puts "Simulating Season..."
			mlb_simulate_season(@mlb_al_hash,@mlb_nl_hash)
			mlb
		when user_input == 4
			puts "Printing Standings..."
			mlb_print_league_standings(@mlb_name,@mlb_al_name,@mlb_nl_name,@mlb_al_hash,@mlb_nl_hash)
			mlb
		when user_input == 5
			puts "Switching Sports League..."
			which_league
		when user_input == 6
			exit()
		end
	end

	def exit()
		puts "\n\n\nHope you had a good time! Goodbye."
	end

end

new_instance = Overall.new("Parag")