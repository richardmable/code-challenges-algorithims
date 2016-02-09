# 2.2.3 :006 > 'a'.ord
#  => 97 
# 2.2.3 :007 > 'z'.ord
#  => 122 
# 2.2.3 :008 > 

# 2.2.3 :008 > 'A'.ord
#  => 65 
# 2.2.3 :009 > 'Z'.ord
#  => 90 

# ROT-13 encryption
def encrypt_rot13(string)
	# this array will become the encrypted array
	encrypted = []
	# This splits the string into individual letters as an array
	splitString = string.split("")
	splitString.each do |x|
		#if equal to the range of lowercase ASCII chars, encrypt
		if x.ord <= 122 && x.ord >= 97
			# turn into integer, add 13 to rotate it
			ascii = x.ord + 13
			#if ascii is greater than 122 go back to 97 and add remaining number
			#this subtracts 122 from ascii value to find remainder
			#adds it starting at 96 to account for the fact that 97 is a
				if ascii > 122
					ascii = 96 + (ascii - 122)
				end
			#turn ascii back into encrypted char
			eLetter = ascii.chr
			#push this char into the encrypted array
			encrypted.push(eLetter)
		#if equal to the range of uppercase ASCII chars, encrypt
		elsif x.ord <= 90 && x.ord >= 65
			#same logic as lowercase, but with uppercase ASCII range
			ascii = x.ord + 13
			if ascii > 90
				ascii = 64 + (ascii - 90)
			end
			eLetter = ascii.chr
			encrypted.push(eLetter)
		else
			#else push the char into the array as is
			encrypted.push(x)
		end
	end
	encrypted = encrypted.join
	encrypted
end

# Caesar encryption
def en_c(string)
	# get the user input for shift direction and amount
	puts "Enter your shift direction: ('left' or 'right' are the only acceptable inputs)"
	shiftDirection = gets
	# chomp off the return char
	shiftDirection = shiftDirection.chomp.to_s
	#verifying user input
	if shiftDirection != "right" && shiftDirection != "left"
		puts "You must have made a typo, that's not left or right, try again!"
		en_c(string)
	end
	puts "Enter your shift amount as a number"
	shiftAmount = gets
	#to_i to make sure it's an integer
	shiftAmount = shiftAmount.chomp.to_i
	if shiftAmount > 13
		puts "Your amount was higher than 13, which when you think about it, is kind of silly! Try again."
		en_c(string)
	end
	# set up the blank array for encryption
	encrypted = []
	#split the inputted string for processing
	splitString = string.split("")
	#iterate over each string 
	splitString.each do |x|
		# the logic that follows is very similar to ROT-13 method
		# except utilizing user input and a shift left or right
		if x.ord >= 97 && x.ord <= 122
			if shiftDirection == "right"
				ascii = x.ord + shiftAmount
				if ascii > 122
					ascii = 96 + (ascii - 122)
				end
				eLetter = ascii.chr
				encrypted.push(eLetter)
			elsif shiftDirection == "left"
					ascii = x.ord - shiftAmount
				if ascii < 97
					ascii = 98 - (97 - ascii)
				end
				eLetter = ascii.chr
				encrypted.push(eLetter)
			end
		elsif x.ord <= 90 && x.ord >= 65
			if shiftDirection == "right"
				ascii = x.ord + shiftAmount
				if ascii > 90
					ascii = 64 + (ascii - 90)
				end
				eLetter = ascii.chr
				encrypted.push(eLetter)
			elsif shiftDirection == "left"
					ascii = x.ord - shiftAmount
				if ascii < 65
					ascii = 91 - (65 - ascii)
				end
				eLetter = ascii.chr
				encrypted.push(eLetter)
			end
		else
			encrypted.push(x)
		end
	end
	encrypted = encrypted.join
	encrypted
end






