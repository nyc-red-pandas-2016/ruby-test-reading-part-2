class Building 
	attr_reader :apartments
	def initialize(args = {})
		@apartments = args.fetch(:apartments, "")
		@address = args.fetch(:address, "48 Wall St.")
	end

	def total_room_count
		@apartments.inject(0) {|sum, room| sum += room.rooms.length}
	end

	def total_monthly_revenue
		@apartments.inject(0) {|sum, rent| sum += rent.monthly_rent}
	end

	def apartments_by_rent
		@apartments.sort {|high, low| low.monthly_rent <=> high.monthly_rent}
	end

	def find_apartments_by_bedroom_count(num)
		@apartments.find {|rooms| rooms.bedroom_count == num}
	end

	def total_sqft
		@apartments.inject(0) {|sum, apt| sum += apt.total_sqft}
	end
end
