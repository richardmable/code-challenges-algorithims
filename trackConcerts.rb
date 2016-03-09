# You are building an app to track concerts. You pull data into your app via an api, but the data is received as a line of text:
# e.g.
# Bob Dylan:Mann Music Center, 7/13/16 at 7:30PM
# The list comes in at a random order. Your task is to build two functions (though more are modularity is encouraged) 
# that receive a list and either an artist or a venue to return all concerts related to that information.
​
​
def concert_by_artist(list, artist)
	#set an emtpy array for the concer list for that artist
	concertList = []
	# return all the concerts that the artist plays
	#rotate through the list returned from the API
	list.each do |x|
		# grab the artist name from the string by using partition
		if artist == x.partition(":")[0]
			# grab the concert line after the comma using partition
			# and push it into the array
			concertList.push(x.partition(":")[2])
		end
	end
	# return concertList and print out to terminal
	puts concertList
end
​

def concert_by_venue(list, venue)
	artistList = []
    # return all the concerts/artists at that venue
    list.each do |x|
    	# check the venue name against the provided menu name
    	if venue == x.partition(":")[2].partition(",")[0]
    		# push the artist into the list if they are playing at the matched venue
    		artistList.push(x.partition(":")[0])
    	end
    end
    # return the artist list for that venue and print out to terminal
    puts artistList
end