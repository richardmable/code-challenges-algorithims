# You are building an app to track concerts. You pull data into your app via an api, but the data is received as a line of text:
# e.g.
# Bob Dylan:Mann Music Center, 7/13/16 at 7:30PM (seperated by &)
# The list comes in at a random order. Your task is to build two functions (though more are modularity is encouraged) 
# that receive a list and either an artist or a venue to return all concerts related to that information.
​list = "Bruce Springsteen:Wells Fargo Center, 2/12/16 at 7:30PM & Flight of the conchords:Mann Music Center, 6/12/16 at 7:30PM & G. Love and Special Sauce:Fillmore, 3/26/16 at 7:30PM & Paul Simon:Mann Music Center, 6/25/16 at 7:30PM & B.O.B.:Fillmore, 6/10/16 at 7:30PM & Father:Fillmore, 4/25/16 at 7:30PM & Bob Dylan:Starlight Theatre, 6/21/16 at 7:30PM & Thrice:Fillmore, 6/17/16 at 7:30PM & Phish:Mann Music Center, 6/29/16 at 7:30PM & Bob Dylan:Wolf Trap, 7/6/16 at 7:30PM & Bob Dylan:Mann Music Center, 7/13/16 at 7:30PM & Guster:Fillmore, 6/16/16 at 7:30PM & Paul Simon:Fox Theatre, 5/3/16 at 7:30PM & B.O.B.:Readyroom, 4/29/16 at 7:30PM"

def concert_by_artist(list, artist)
	#set an emtpy array for the concer list for that artist
	concertList = []
	# split the string into an array on the ampersand
	list = list.split("&")
	# return all the concerts that the artist plays
	#rotate through the list returned from the API
	list.each do |x|
		# remove leading and trailing whitspaces
		x.strip!
		# grab the artist name from the string by using partition
		if artist == x.partition(":")[0]
			# grab the concert line after the comma using partition
			# and push it into the array
			concertList.push(x.partition(":")[2])
		end
	end
	# return "no matches found" if no matches were found
	if concertList == []
		puts "no matches found"
	end
	# return concertList and print out to terminal
	puts concertList
end

def concert_by_venue(list, venue)
	artistList = []
	# split the string into an array on the ampersand
	list = list.split("&")
    # return all the concerts/artists at that venue
    list.each do |x|
    	# remove leading and trailing whitspaces
    	x.strip!
    	# check the venue name against the provided menu name
    	if venue == x.partition(":")[2].partition(",")[0]
    		# push the artist into the list if they are playing at the matched venue
    		artistList.push(x.partition(":")[0])
    		# concat these two
    		# list.partition(":")[2].partition(",")[2]
    	end
    end
    # return "no matches found" if no matches were found
	if artistList == []
		puts "no matches found"
	end
    # return the artist list for that venue and print out to terminal
    puts artistList
end






