class Room

  attr_accessor :name, :sqft, :window_count

  def initialize(args={})
    @name           = args.fetch(:name)
    @sqft           = args.fetch(:sqft)
    @window_count   = args.fetch(:window_count)
  end

end
