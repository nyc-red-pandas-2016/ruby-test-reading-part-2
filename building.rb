class Building
	attr_reader :address, :apartments
	def initialize(args={})
		@address= args.fetch(:address,"")
		@apartments= args.fetch(:apartments,[])
	end

	def total_room_count
		count= 0
		@apartments.each { |apartment| count+=  apartment.room_count }
		count
	end

	def total_monthly_revenue
		revenue= 0
		@apartments.each { |apartment| revenue+=  apartment.monthly_rent }
		revenue
	end

	def apartments_by_rent
		@apartments.sort_by! { |apartment| apartment.monthly_rent }
		@apartments.reverse!
	end

	def find_apartments_by_bedroom_count(number)
		@apartments.each do |apartment|
			return apartment if apartment.bedroom_count== number
		end
		puts "No apartments are avalible with #{number} bedrooms"
	end

	def total_sqft
		total= 0
		@apartments.each { |apartment| total += apartment.total_sqft }
		total
	end

end
