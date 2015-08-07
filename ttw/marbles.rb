# Write a program to simulate picking a marble out of a bag of colored marbles 
# without replacement (marbles are not added back to the bag after selecting them). 
# Assume we have 3 colors: red, green, and blue. Your program should print out the 
# color of each marble selected until the bag is empty. 
# Yen168

# test
bag = {red: 2,green: 2, blue: 6}
# hard copy to allow hash immute
bag_update = bag.dup

def result(x)

		sum = x.values.inject(0.0,:+)

		# if you want to check probability change
		# p Hash[x.map{|k,v| [k,v/sum]}]
		
		c = 0
		rand_fixed = rand(sum) + 1

		x.each do |k,v|

			c += v
			return k, sum if rand_fixed <= c

		end
end

def update(ball,bag)

	bag[ball]-=1
	bag

end

def picking(bag)
		
	loop do
		
		ball,sum = result(bag)
		bag = update(ball,bag)
		puts "Pick #{ball} marble, Available marbles: #{sum-1}"
		
		break if (sum-1 == 0)

	end
end

# test
picking(bag_update)
