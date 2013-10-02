#Below is my hash which contains all the subway stops for the red, green, and orange line in an Array

subway = {

red: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"], 
green: ["haymarket", "government center", "park st", "bolyston", "arlington", "copley"] , 
orange: ["north station", "haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
}

#Method for calculating stops on a one line trip

def same_line_trip(start_line, end_line, start_stop, end_stop)
	same_track = subway.fetch(start_line) 
	same_track_start = same_track.index(start_stop)
	same_track_end = same_track.index(end_stop)
	same_line_stops = (same_track_start.to_i - same_track_end.to_i).abs
	
	return same_line_stops
end

#Method for calculating stops on a two line trip (Warning!...this could be a little bit trippy)

def two_line_trip(start_line, end_line, start_stop, end_stop)
	first_track = subway.fetch(start_line)
	second_track = subway.fetch(end_line)
	trip_start = first_track.index(start_stop)
	trip_switch1 = first_track.index("park st")
	trip_switch2 = second_track.index("park st")
	trip_end = second_track.index(end_stop)
	first_part = (trip_start.to_i - trip_switch1.to_i).abs
	second_part = (trip_switch2.to_i - trip_end.to_i).abs
	two_line_stops = (first_part.to_i - second_part.to_i).abs

	return two_line_stops
end

 
if start_line == end_line

    "Looks like you will only be making #{same_line_stops} stops today!"
   # "Your trip starts in #{start_stop} and will end in #{end_line}"

else

	"Looks like you will be making some switches today! Your trip has #{same_line_stops} stops today!"
	# puts  "You will starts in #{start_stop} and will end in #{end_line}"
end

puts "Enjoy your trip to #{end_line}"

puts "Thanks for using Amal's Trip Planner" 




#Below are my friendly user prompts

puts "What station will you be departing from?"
start_stop = gets.chomp.downcase


puts "What line is that on? (PLEASE INPUT COLOR ONLY)"
start_line = gets.chomp.downcase


puts "What station would you like to go to?"
end_stop = gets.chomp.downcase

puts "What line is that on? (PLEASE INPUT COLOR ONLY)"
end_line = gets.chomp.downcase