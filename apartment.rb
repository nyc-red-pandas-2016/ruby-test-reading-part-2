require_relative 'room'

class Apartment

	attr_accessor :rooms, :number, :monthly_rent

	def initialize(args = {})
		@rooms = args.fetch(:rooms, [])
		@number = args.fetch(:number, 'unlisted')
		@monthly_rent = args.fetch(:monthly_rent, 1000)
	end

	def total_sqft
		rooms.map { |room| room.sqft }.inject(:+)
	end

	def price_per_sqft
		monthly_rent.to_f / total_sqft.to_f
	end

	def room_count
		rooms.length
	end

	def bedroom_count
		rooms.select { |room| room.name.downcase.strip == 'bedroom' }.length
	end
	
end
