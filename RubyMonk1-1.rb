def array_of_fixnums?(array)
  array.each {|x| return false unless x.is_a?(Fixnum)}
  true
end

array_of_fixnums?([1,2,3])
