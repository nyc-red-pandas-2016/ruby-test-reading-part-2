require_relative 'apartment'

class Building

	attr_accessor :address, :apartments

	def initialize(args = {})
		@address = args.fetch(:address, 'unlisted')
		@apartments = args.fetch(:apartments, [])
	end

	def total_room_count
		apartments.map { |apartment| apartment.rooms }.flatten.length
	end

	def total_monthly_revenue
		apartments.map { |apartment| apartment.monthly_rent }.inject(:+)
	end

	def apartments_by_rent
		apartments.sort { |apt_a, apt_b| apt_b.monthly_rent <=> apt_a.monthly_rent}
	end

	def find_apartments_by_bedroom_count(count)
		apartments.find { |apartment| apartment.bedroom_count == count }
	end

	def total_sqft
		apartments.map { |apartment| apartment.total_sqft }.inject(:+)
	end

end
