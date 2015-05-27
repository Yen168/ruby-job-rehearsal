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

#method / block / yield / Proc / lambda
##Blocks
are unnamed little code chunks you can drop into other methods. Used all the time.
##Procs
are identical to blocks but you can store them in variables, which lets you pass them into functions as explicit arguments and save them for later. Used explicitly sometimes.
##Lambdas
are really full methods that just haven't been named. Used rarely.
##Methods
are a way of taking actual named methods and passing them around as arguments to or returns from other methods in your code. Used rarely.
##Closure
is just the umbrella term for all four of those things, which all somehow involve passing around chunks of code.

ex:
def a_method
 lambda { return "we just returned from the block" }.call
 Proc.new { return "we just returned from the block" }.call
 return "we just returned from the calling method"
end

puts a_method
