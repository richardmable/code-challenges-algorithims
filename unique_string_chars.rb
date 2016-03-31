# implement an algorithm to determine if a string has all unique chars
# what if you cannot use additional data structures?
str_repeat = "opmibhugvcfyijohugyftdresdtguyhijo"
str_no_repeat = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
def unique_chars?(str)
	# split each char in the str into an array
	arr = str.split(//)
	arr.each do |char|
		if arr.count(char) >= 2
			return false
		else
			return true
		end
	end
end
