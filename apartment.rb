require_relative 'building.rb'

class Apartment < Building
	attr_reader :rooms, :monthly_rent
	
	def initialize(args={})
		@number = args.fetch(:number, '')
		@rooms= args.fetch(:rooms,[])
		@monthly_rent= args.fetch(:monthly_rent, 1000)
	end

	def total_sqft
		total_sqft= 0
		@rooms.each { |room| total_sqft += room.sqft }
		total_sqft 
	end	

	def room_count
		@rooms.length
	end

	def price_per_sqft
		@monthly_rent.to_f/total_sqft
	end

	def bedroom_count
		count = 0
		@rooms.each {|room| count += 1 if room.name == "bedroom" }
		count
	end
end
