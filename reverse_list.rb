#Write function that reverses a list, preferably in place.
list = [-1, -50, -40, 123, 452, 346, 785, 114, 675, 32, 567, 231, 562, 743, 764, 247, 535, 742, 735]

# method that takes in array
def reverse_array(array)
# the length of the list is the length of the array - 1	
	listLength = array.length - 1
	# set a new empty array
	listReverse = []
	# go through each index of original array and push it into new array
	#.push will insert each item onto end of new array
	#start with taking last index of original array
	for i in 0..listLength
		listReverse.push(array[listLength - i])
	end
	#print the result
	puts listReverse.inspect
end

#swaps postions of any two values in arrays
def swap(valueOne, valueTwo)
	#hold the value of valueOne
	 hold = valueOne
	 #set valueOne to valueTwo
	 valueOne = valueTwo
	 #set valueTwo to valueOne
	 valueTwo = hold
	 #return the swapped values
	 return valueOne, valueTwo
end

# method that takes in array
def reverse_array_better(array)
# the length of the list is the length of the array - 1	
	listHalf = array.length / 2
	# go through each index of the array and push it into begining of array using .insert
	#start with taking last index of original array
	for i in 0..listHalf

		array.insert(0, array.last)

	end
	array.inspect
end
puts list.inspect
puts "reverse"
puts reverse_array(list)
puts ""
puts reverse_array_better(list)


def odd(list)
	listLength = list.length
		listLength.each do x
		if x % 2 == 1
			new_arr.push()
		end
	end
end


