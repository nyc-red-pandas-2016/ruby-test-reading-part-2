class Building 
	attr_reader :apartments
	def initialize(args = {})
		@apartments = args.fetch(:apartments, "")
		@address = args.fetch(:address, "48 Wall St.")
	end


end
