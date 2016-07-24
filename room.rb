class Room 
	attr_accessor :name
	attr_reader :sqft, :window_count

	def initialize(opts={})
		@name = opts.fetch(:name, "bedroom")
		@sqft = opts.fetch(:sqft, 120)
		@window_count = opts.fetch(:window_count, rand(1..2))
	end


end
