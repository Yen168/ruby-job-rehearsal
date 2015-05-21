# ruby-job-rehearsal

##LIFO push, pop   -> stack
##FIFO push, shift -> queue
##collect & map 
Why is there a different implementation for arrays and enums? An enum is a generalized iteration structure, which means that there is no way in which Ruby can predict what the next element can be (you can define infinite enums, see Prime for an example). Therefore it must call a function to get each successive element (typically this will be the each method).

Arrays are the most common collection so it is reasonable to optimize their performance. Since Ruby knows a lot about how arrays work it doesn't have to call each but can only use simple pointer manipulation which is significantly faster.

Similar optimizations exist for a number of Array methods like zip or count.

##inject
inject(:+)

##mixin Comparable & <=>
