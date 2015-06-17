require './nfl_module.rb'
require './nba_module.rb'

class Overall
	include NationalFootballLeague
	include NationalBasketballAssociation
	def initialize(name)
	
	###############################################################################################################################################################################################################################################################################################################################################	
	#NBA
	###############################################################################################################################################################################################################################################################################################################################################		
		@nba_eastern_name = "Eastern Conference"
		@nba_western_name = "Western Conference"
		@nba_name = "National Basketball Association"

		@nba_eastern_array = ["Boston Celtics","Brooklyn Nets","New York Knicks","Philadelphia 76ers","Toronto Raptors","Chicago Bulls","Cleveland Cavaliers","Detroit Pistons","Indiana Pacers","Milwaukee Bucks","Atlanta Hawks","Charlotte Hornets","Miami Heat","Orlando Magic","Washington Wizards"]
		@nba_western_array = ["Dallas Mavericks","Houston Rockets","Memphis Grizzlies","New Orleans Pelicans","San Antonio Spurs","Denver Nuggets","Minnesota Timberwolves","Oklahoma City Thunder","Portland Trail Blazers","Utah Jazz","Golden State Warriors","Los Angeles Clippers","Los Angeles Lakers","Phoenix Suns","Sacramento Kings"]
		

		@nba_eastern_hash = {
			"Boston Celtics" => [0,0,0],
			"Brooklyn Nets" => [0,0,0],
			"New York Knicks" => [0,0,0],
			"Philadelphia 76ers" => [0,0,0],
			"Toronto Raptors" => [0,0,0],
			"Chicago Bulls" => [0,0,0],
			"Cleveland Cavaliers" => [0,0,0],
			"Detroit Pistons" => [0,0,0],
			"Indiana Pacers" => [0,0,0],
			"Milwaukee Bucks" => [0,0,0],
			"Atlanta Hawks" => [0,0,0],
			"Charlotte Hornets" => [0,0,0],
			"Miami Heat" => [0,0,0],
			"Orlando Magic" => [0,0,0],
			"Washington Wizards" => [0,0,0]
		}

		@nba_western_hash = {
			"Dallas Mavericks" => [0,0,0],
			"Houston Rockets" => [0,0,0],
			"Memphis Grizzlies" => [0,0,0],
			"New Orleans Pelicans" => [0,0,0],
			"San Antonio Spurs" => [0,0,0],
			"Denver Nuggets" => [0,0,0],
			"Minnesota Timberwolves" => [0,0,0],
			"Oklahoma City Thunder" => [0,0,0],
			"Portland Trail Blazers" => [0,0,0],
			"Utah Jazz" => [0,0,0],
			"Golden State Warriors" => [0,0,0],
			"Los Angeles Clippers" => [0,0,0],
			"Los Angeles Lakers" => [0,0,0],
			"Phoenix Suns" => [0,0,0],
			"Sacramento Kings" => [0,0,0]
		}

	###############################################################################################################################################################################################################################################################################################################################################		


	###############################################################################################################################################################################################################################################################################################################################################	
	#NFL
	###############################################################################################################################################################################################################################################################################################################################################		
		
		@nfl_afc_name = "American Football Conference"
		@nfl_nfc_name = "National Football Conference"
		@nfl_name = "National Football League"

		@nfl_afc_array = ["Buffalo Bills","Miami Dolphins","New England Patriots","New York Jets","Baltimore Ravens","Cincinnati Bengals","Cleveland Browns","Pittsburgh Steelers","Houston Texans","Indianapolis Colts","Jacksonville Jaguars","Tennessee Titans","Denver Broncos","Kansas City Chiefs","Oakland Raiders","San Diego Chargers"]
		@nfl_nfc_array = ["Dallas Cowboys","New York Giants","Philadelphia Eagles","Washington Redskins","Chicago Bears","Detroit Lions","Green Bay Packers","Minnesota Vikings","Atlanta Falcons","Carolina Panthers","New Orleans Saints","Tampa Bay Buccaneers","Arizona Cardinals","St. Louis Rams","San Francisco 49ers","Seattle Seahawks"]



		@nfl_afc_hash = {
			"Buffalo Bills" => [@bills_wins=0,@bills_losses=0,@bills_ties=0],
			"Miami Dolphins" => [@dolphins_wins=0,@dolphins_losses=0,@dolphins_ties=0],
			"New England Patriots" => [@patriots_wins=0,@patriots_losses=0,@patriots_ties=0],
			"New York Jets" => [@jets_wins=0,@jets_losses=0,@jets_ties=0],
			"Baltimore Ravens" => [@ravens_wins=0,@ravens_losses=0,@ravens_ties=0],
			"Cincinnati Bengals" => [@bengals_wins=0,@bengals_losses=0,@bengals_ties=0],
			"Cleveland Browns" => [@browns_wins=0,@browns_losses=0,@browns_ties=0],
			"Pittsburgh Steelers" => [@steelers_wins=0,@steelers_losses=0,@steelers_ties=0],
			"Houston Texans" => [@texans_wins=0,@texans_losses=0,@texans_ties=0],
			"Indianapolis Colts" => [@colts_wins=0,@colts_losses=0,@colts_ties=0],
			"Jacksonville Jaguars" => [@jaguars_wins=0,@jaguars_losses=0,@jaguars_ties=0],
			"Tennessee Titans" => [@titans_wins=0,@titans_losses=0,@titans_ties=0],
			"Denver Broncos" => [@broncos_wins=0,@broncos_losses=0,@broncos_ties=0],
			"Kansas City Chiefs" => [@chiefs_wins=0,@chiefs_losses=0,@chiefs_ties=0],
			"Oakland Raiders" => [@raiders_wins=0,@raiders_losses=0,@raiders_ties=0],
			"San Diego Chargers" => [@chargers_wins=0,@chargers_losses=0,@raiders_ties=0]
		}

		@nfl_nfc_hash = {
			"Dallas Cowboys" => [@wins=0,@losses=0,@ties=0],
			"New York Giants" => [@wins=0,@losses=0,@ties=0],
			"Philadelphia Eagles" => [@wins=0,@losses=0,@ties=0],
			"Washington Redskins" => [@wins=0,@losses=0,@ties=0],
			"Chicago Bears" => [@wins=0,@losses=0,@ties=0],
			"Detroit Lions" => [@wins=0,@losses=0,@ties=0],
			"Green Bay Packers" => [@wins=0,@losses=0,@ties=0],
			"Minnesota Vikings" => [@wins=0,@losses=0,@ties=0],
			"Atlanta Falcons" => [@wins=0,@losses=0,@ties=0],
			"Carolina Panthers" => [@wins=0,@losses=0,@ties=0],
			"New Orleans Saints" => [@wins=0,@losses=0,@ties=0],
			"Tampa Bay Buccaneers" => [@wins=0,@losses=0,@ties=0],
			"Arizona Cardinals" => [@wins=0,@losses=0,@ties=0],
			"St. Louis Rams" => [@wins=0,@losses=0,@ties=0],
			"San Francisco 49ers" => [@wins=0,@losses=0,@ties=0],
			"Seattle Seahawks" => [@wins=0,@losses=0,@ties=0]
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
		puts "\nWhich league would you like to view"
		puts "\n[1]: NBA"
		puts "[2]: NFL"
		puts "[3]: NHL"
		puts "[4]: MLB"
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
		puts "For NBA"
	end
	

	def nfl
		puts "\nWhat would you like to do?"
		puts "\n[1]: Generate Conference Game"
		puts "[2]: Generate League Game"
		puts "[3]: Simulate Season"
		puts "[4]: Print Standings"
		puts "[5]: Switch League"
		puts "[6]: Exit"

		user_input = gets.chomp.to_i

		case 
		when user_input == 1
			puts "Generating Conference Game"
			puts "\nWhich Conference?"
			puts "\n[1]: AFC"
			puts "[2]: NFC"
			which_conference = gets.chomp.to_i
			if which_conference == 1
				generate_conference_game(@nfl_afc_hash)
			elsif which_conference == 2
				generate_conference_game(@nfl_nfc_hash)
			else
				puts "\n Sorry not a valid input."
				nfl
			end
		when user_input == 2
			puts "Generating League Game"
			generate_league_game(@nfl_afc_hash,@nfl_nfc_hash)
		when user_input == 3
			puts "Simulating Season"
			simulate_season(@nfl_afc_hash,@nfl_nfc_hash)
		when user_input == 4
			puts "Printing Standings"
			puts @nfl_afc_hash
			print_league_standings(@nfl_name,@nfl_afc_name,@nfl_nfc_name,@nfl_afc_hash,@nfl_nfc_hash)
		when user_input == 5
			puts "Switching League"
			which_league
		when user_input == 6
			exit()
		end
	end

    def nhl
		puts "For NHL"
	end

	def mlb
		puts "For MLB"
	end

	def exit()
		puts "\n\n\nHope you had a good time! Goodbye."
	end

end

new_instance = Overall.new("Parag")