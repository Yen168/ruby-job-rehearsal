```ruby
# Given a dictionary with 1,000 words (the words are in alphabetical order given 
# it's a dictionary), write a program that prints all anagrams found. For example, 
# using the following dictionary as input: 
# [ "ACT", "ANTS", "ART", "BAT", "BAR", "CAT", "DOOR", "RAT", "TAB", "TAR" ] 
# should print 
# ACT: CAT, ART: RAT, TAR, BAT: TAB.
# Yen168
# Output: ["ACT", "ART", "BAT", "CAT", "RAT", "TAB", "TAR"]


 list = [ "ACT", "ANTS", "ART", "BAT", "BAR", "CAT", "DOOR", "RAT", "TAB", "TAR" ]

 # Only varible "possible_list" and "a" will be updated after initiatizted

 def checklist(list)

 	fact = ->(n){

 		->(x){ (x==1) ? 1 : x*(x-1)}.(n)

 	}

 	result = list.inject([]){ |a,w|

 		possible_list ||= []
 		
 		while possible_list.size != fact[w.length]
 			
 			shu = w.split("").shuffle.join
 			possible_list << shu unless possible_list.include?(shu) 

 		end

 		a << possible_list.select {|x| list.include?(x) && x!= w}

 	}

 	result.flatten.uniq.sort

 end

p checklist(list)
```

