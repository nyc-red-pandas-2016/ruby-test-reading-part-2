class Apartment

	attr_reader :monthly_rent, :number, :rooms, :room_count

	def initialize(opts={})
		@number = opts.fetch(:number, "0")
		@rooms =  opts.fetch(:rooms, [])
		@monthly_rent = opts.fetch(:monthly_rent, 1000)
		@room_count = @rooms.length

	end

	def total_sqft
		sum = 0
		@rooms.each do |room|
			sum += room.sqft
		end 
		return sum
	end

	def price_per_sqft
		(monthly_rent.to_f/total_sqft.to_f).to_f
	end

	def bedroom_count
		count = 0
		@rooms.each do |room|
			if(room.name == "bedroom")
				count +=1
			end
		end
		return count
	end


end
