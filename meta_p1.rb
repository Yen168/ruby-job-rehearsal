list = {table:"Book",price:30, isbn:6667,title:"OMG"}


class AutoTable
	
	def initialize(list)

		@a = Class.new do
			
			list.each do |k,v|  
				
				eval "@#{k}= \"#{v}\""

				define_method "get_#{k}" do

					list[k]

					end

				define_method "set_#{k}=" do |val|

					list[k] = val

					end

			end


		
		end
		
	end

	def light_up
		@a
	end


end
