# Write a function that returns the largest element in a list.

list = [-1, -50, -40, 123, 452, 346, 785, 114, 675, 32, 567, 231, 562, 743, 764, 247, 535, 742, 735]
counter = 0

#compare each num to the next
#if larger keep if smaller discard
#would have to go through entire list

# every single number compares to the one to the left
#the bigger one gets kept
#repeat

def largest_elm(list)
	list.each do |x|
		
end

largest_elm(list)




	# listLength = list.length - 1
	# counter = 0
	# list.each do |x|
	# 	if counter >= listLength
	# 		break
	# 	elsif x[counter + 2]
	# 		if x[counter] < x[counter + 1] > x[counter + 2]
	# 		puts x[counter + 1]
	# 		end
	# 	elsif x[counter + 2]
	# 		if x[counter] < x[counter + 2]
	# 		puts x[counter + 2]
	# 		end
	# 	else
	# 		puts x[counter]
	# 	end
	# 	counter = counter + 1
	# end

