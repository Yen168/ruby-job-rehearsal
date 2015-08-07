
```ruby
# Write a method to calculate the maximum possible profit 
# I could have made by buying low and selling high, 
# given an array of mutual fund NAVs (end of day prices) 
# for every day in a time interval. For example, 
# for the array [7,24,8,15,2,20], 
# the maximum profit would have been 18, by buying at 2 on day 5 
# and selling at 20 on day 6.
# Yen168

#test
navs = [7,24,8,15,2,20]

# You can purchase stock any day, but not last day
# and assume it must to be sold by last day
# Its complexity is O(n) or less.

def seekMax(navs)

	result ||= []
	result_max = navs.max - navs.min
	beginer = 0
	ender = navs.size
	find_max = true

	pattern = navs.each_with_index.map{|x,i|[x,i]}.sort
	
	while find_max do

		if pattern[beginer..ender].last[1]>pattern[beginer..ender].first[1]
			if (pattern[beginer..ender].last[0] - pattern[beginer..ender].first[0]) == result_max
				break
			else
			result_max = (pattern[beginer..ender].last[0] - pattern[beginer..ender].first[0])
			# if you want to know which day to buy and sell....
			#result = result_max, pattern[beginer..ender].first[1],pattern[beginer..ender].last[1]
			
			end

		else
			if pattern[beginer..ender].first[1] == (pattern[beginer..ender].size-1)
				beginer = beginer + 1
			else
				ender = ender - 1
			end
		
		end
	end
	
	result_max
	#result

end

# test
p seekMax(navs)
```
