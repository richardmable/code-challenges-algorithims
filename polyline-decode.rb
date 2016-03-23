# function to decode Google's Encoded Polyline Algorithm format
# https://developers.google.com/maps/documentation/utilities/polylinealgorithm#example
def polyline_decode(polyline)
	# split the polyline into an array on each character and set to polyline
	polyline = polyline.split(//)
	# set an empty array to put the OR-ed values in
	oring_values = []
	# rotate through each character in the polyline
	polyline.each do |x|
		# convert to numerical ASCII value and subtract 63 (reverse of step 11 and 10)
		x = x.ord - 63
		# convert each integer to binary using #to_s(base) (reverse of step 9)
		x = x.to_s(2)
		# add additional leading zeros that existed before
		# this is so that every bit chunk is the correct length of 6
		if x.length != 6
			# check how many zeros are needed
			zeros = 6 - x.length
			# create a new array of the needed zeros and turn into string
			zeros_to_add = Array.new(zeros, 0).join
			# concatenates the original binary number to the needed zeross
			x = zeros_to_add.concat(x)
		end
		# push each value onto the end of the OR-ed values array
		oring_values.push(x)
	end
	# rotate through the newly created array of the OR-ed values
	# this is where we split the array into what will be each lat/long value
	# using with_index to keep track of index position
	oring_values.each_with_index do |y, index|
		# if the oring_values element is equal to zero in the first number of the string
		if y[0].to_i == 0
			# set a new array equal to the elements up to and including that element
			# these are the OR-ed values of the first number
			# use #slice_when here
			value = oring_values.slice(0, index + 1)
			# set an empty array for the five_bit values
			five_bit_values = []
			# rotate through each of the values of what is the first integer
			value.each do |z|
				# reverse the string, chop off the leading number, then reverse back to original state
				# this is ok to do for the last 5-bit that begins with zero since we are reversing it
				five_bit = z.reverse.chop.reverse
				# push it into the array 
				five_bit_values.push(five_bit)
			end
			# reverse the 5 bit values (reverse of step 7)
			five_bit_values.reverse!
			
			# this is correct as the first set of numbers
			puts five_bit_values.inspect
		end
	end
end

polyline_decode("iod~FbylvOsqOs~S")
