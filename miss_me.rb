# Given an array of letters in the alphabet in order, find which letters are missing through the last letter in the array
# E.G.
# ['a','b','c','f','g','h','j','m','p','s','t','u','v','aa','cc','ee'].miss_me => ['d','e','i','k','l','n','o','q','r','w','x','y','z','bb','dd']


class Array

	# example
	# def length
	# 	self.length
	# end

	def miss_me
		# set alphabet array to compare to
		alphabet = ('a'..'z').to_a
		# the missing letters to be returned
		missing = []
		# numerilized alphabet
		num_alphabet = (0..25).to_a
		# set counter to zero
		counter = 0
		alphabet.each do |x|
			# if the provided array contains the current letter in the alphabet
			# do nothing and increment the counter
			if self.detect { |i| i.downcase  == alphabet[counter] }
				counter += 1
			else
				# if the current letter of the alphabet is not in the provided array
				# push that letter into the missing letter array to be returned
				missing.push(alphabet[counter])
				counter += 1
			end
		end
		# delete_amount = (missing.last.ord - self.last.ord)
		# puts delete_amount
		# puts 26 - delete_amount
		# delete_amount = 26 - delete_amount
		# take_amount = missing.length - delete_amount
		# puts take_amount
		# puts missing.inspect
		# missing = missing.take(take_amount)
		return missing
	end
end
# counter       0   1   2   3   4   5   6   7   8   9   10
# alphabet    ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
# given array ['a','b','c','f','g','h','j','m','p','s','t','u','v']
