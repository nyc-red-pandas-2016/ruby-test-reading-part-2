class Room

attr_accessor :name
attr_reader :sqft

  def initialize(args={})
    @sqft = args.fetch(:sqft, 120)
    @name = args.fetch(:name, "bedroom")
    @window_count = args.fetch(:window_count, rand(0..2))
  end

  def update_name(new_name)
    @name = new_name
  end

end
