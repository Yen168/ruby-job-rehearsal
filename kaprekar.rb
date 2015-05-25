def kaprekar?(k)
  n = k.to_s.size
  square = k**2
  return false unless k == (square%10**n + square/10**n)
  true
end
