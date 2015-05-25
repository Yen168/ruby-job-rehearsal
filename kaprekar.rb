def kaprekar?(k)
  
  n = k.to_s.size
  square = k**2
  times = 10**n
  
  return false unless k == (square%times + square/times)
  true
end
