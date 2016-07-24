class Room

	attr_accessor :name, :sqft, :window_count

	def initialize(args={})
		@name = args.fetch(:name, "bedroom")
		@sqft = args.fetch(:sqft, 120)
		@window_count = args.fetch(:window_count, 1)
	end

end
