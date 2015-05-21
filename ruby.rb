def mb(&block)
	block
end

bo = mb {|n| n-=1; puts "#{n}"}

bo.call 99


