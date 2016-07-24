require_relative 'apartment.rb'

class Room < Apartment
	attr_reader :sqft, :window_count
	attr_accessor :name
	
	def initialize(args={})
		@name= args.fetch(:name,"bedroom")
		@sqft= args.fetch(:sqft, 120)
		@window_count= args.fetch(:window_count, 3)
	end

end
