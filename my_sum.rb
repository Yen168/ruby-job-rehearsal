class MyArray
  #attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
  	
  	return @array.inject(:+) +  initial_value unless block_given?

  	sum = initial_value
  	@array.each {|x| sum += yield(x)}
  	sum

  end
end

my_array = MyArray.new([1, 2, 3])
puts my_array.sum(0) {|n| n**2}
my_array.array = [1,3,3]

