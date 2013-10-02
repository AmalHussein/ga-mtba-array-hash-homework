
require 'pry'

#Below is my hash which contains all the subway stops for the red, green, and orange line in an Array

subway = {

red: ["south station", "park st", "kendall", "central", "harvard", "porter", "davis", "alewife"], 
green: ["haymarket", "government center", "park st", "bolyston", "arlington", "copley"] , 
orange: ["north station", "haymarket", "park st", "state", "downtown crossing", "chinatown", "back bay", "forest hills"]
}


def same_line_trip(start_line, end_line, start_stop, end_stop)
	one_track = []
	one_track = subway.fetch(start_line) 
	one_track_start = one_track.index(start_line)
	one_track_end = one_track.index(end_line)
	 return (one_track_start.to_i - one_track_end.to_i).abs
end


binding.pry 



# if start_line == end_line
  

