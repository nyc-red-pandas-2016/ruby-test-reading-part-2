class Apartment

  attr_reader :rooms, :monthly_rent

  def initialize(args={})
    @number = args.fetch(:number, "")
    @monthly_rent = args.fetch(:monthly_rent, 1000)
    @rooms = args.fetch(:rooms, [])
  end

  def total_sqft
    @rooms.inject(0) { |total, room| total += room.sqft }
  end

  def price_per_sqft
    @monthly_rent.to_f / total_sqft
  end

  def room_count
    @rooms.length
  end

  def bedroom_count
    bedrooms = @rooms.select { |room| room.name == "bedroom" }
    bedrooms.length
  end

end
