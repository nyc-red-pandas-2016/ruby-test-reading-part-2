class Building
	attr_reader :address, :apartments
	def initialize(args={})
		@address = args.fetch(:address, '')
		@apartments = args.fetch(:apartments, [])
	end

	def total_room_count
		@apartments.inject(0) { |sum, apartment| sum +=apartment.rooms.length }
	end

	def total_monthly_revenue
		@apartments.inject(0) { |sum, apartment| sum += apartment.monthly_rent }
	end

	def apartments_by_rent
		@aparments.sort_by { |apartment| apartment.monthly_rent }.reverse
	end

	def find_apartments_by_bedroom_count(bedroom_count)
		@apartments.find { |apartment| apartment.bedroom_count == bedroom_count }
	end

	def total_sqft
		@apartments.inject(0) { |sum, apartment| sum += apartment.total_sqft }
	end
end
