
class Building

	attr_reader :apartments, :address

	def initialize(opts={})
		@address = opts.fetch(:address, "Middle of Nowhere")
		@apartments = opts.fetch(:apartments, [])
	end

	def total_room_count
		total = 0
		@apartments.each do |apartment|
			total += apartment.rooms.length
		end
		return total
	end

	def total_monthly_revenue
		total = 0
		@apartments.each do |apartment|
			total += apartment.monthly_rent
		end
		return total
	end

	def find_apartments_by_bedroom_count(count)
		
		@apartments.each do |apartment|
			total_bedrooms = 0
			apartment.rooms.each do |room|
				if(room.name == "bedroom")
					total_bedrooms += 1
				end
			end
			if(total_bedrooms == count)
				return apartment
			end
		end
	end

	def total_sqft
		total = 0
		@apartments.each do |apartment|
			total += apartment.total_sqft
		end
		return total
	end

	def apartments_by_rent
		reversed = []
		apt = 0
		max = 0
		apartments_clone = @apartments
		num = apartments_clone.length
		num.times do 
			apartments_clone.each do |apartment|
   				if(apartment.monthly_rent > max)
   					max = apartment.monthly_rent
   					apt = apartment
   				end
			end
		    reversed << apt
   			apartments_clone.delete(apt)
			max = 0
		end
		
		return reversed
	end

end
