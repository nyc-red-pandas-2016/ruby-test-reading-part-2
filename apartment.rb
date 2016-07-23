class Apartment

  attr_reader :rooms, :monthly_rent

  def initialize(args={})
    @number = args.fetch(:number, "")
    @rooms = args.fetch(:rooms, [])
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft
    @rooms.inject(0) { |sum, room| sum += room.sqft }
  end

  def price_per_sqft
    @monthly_rent.to_f/total_sqft
  end

  def room_count
    @rooms.length
  end

  def bedroom_count
    @rooms.select { |room| room.name == "bedroom" }.length
  end

end
