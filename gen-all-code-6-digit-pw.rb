def code_combos
# the nested loops here produce the same pattern that I wrote down below, for 10 digit numeric passcodes (there are 10,000,000,000 combinations)
# the program runs but after about 10 minutes the amount of memory and CPU availability was starting to dwindle
	(0..9).each do |first|
		(0..9).each do |second|
			(0..9).each do |third|
				(0..9).each do |fourth|
					(0..9).each do |fifth|
						(0..9).each do |sixth|
							(0..9).each do |seventh|
								(0..9).each do |eighth|
									(0..9).each do |ninth|
										(0..9).each do |tenth|
											puts "#{first}#{second}#{third}#{fourth}#{fifth}#{sixth}#{seventh}#{eighth}#{ninth}#{tenth}"
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
# increment last number place through the given range eighth
# puts 1 1 1
# puts 1 1 2
# puts 1 1 3
# when this is complete, increment the second to last number, and then increment the last number through the range
# puts 1 2 1
# puts 1 2 2
# puts 1 2 3
# continue incrementing second to last number through range while repeating the range of the last number
# puts 1 3 1
# puts 1 3 2
# puts 1 3 3
# now increment the third to last number, then begin incrementing the last number
# puts 2 1 1
# puts 2 1 2
# puts 2 1 3
# increment second to last number, repeat the incrementation of the last number
# puts 2 2 1
# puts 2 2 2
# puts 2 2 3
# repeat pattern
# puts 2 3 1
# puts 2 3 2
# puts 2 3 3
# now increment leading number again and repeat the pattern
# puts 3 1 1
# puts 3 1 2
# puts 3 1 3
# incrementing second number...
# puts 3 2 1
# puts 3 2 2
# puts 3 2 3
# final round!
# puts 3 3 1
# puts 3 3 2
# puts 3 3 3
# 9 groups of 3 = 27 combinations, which is how many we expect for 3 numbers


		# first number stays
		# following number increments with others staying the same
		# once that number is done incrementing, repeat incremenation, but also i
		# when the number is done incrementing it goes to zero, the following number starts incrementing (must be + 1 immediately, else repeats a combo)
		# when all numbers have incremented, first number goes to next one
		# repeat until first digit has completed the 9th round of incrementation


