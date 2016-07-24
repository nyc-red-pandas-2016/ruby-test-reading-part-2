class Apartment
  attr_reader :rooms, :monthly_rent, :number

  def initialize(args = {})
    @rooms = args.fetch(:rooms, [])
    @monthly_rent = args.fetch(:monthly_rent, 1000)
    @number = args.fetch(:number)
  end

  def total_sqft
    total_sqft = 0
    @rooms.each { |room| total_sqft += room.sqft }
    total_sqft
  end

  def price_per_sqft
    @monthly_rent.to_f / total_sqft
  end

  def room_count
    @rooms.length
  end

  def bedroom_count
    @rooms.select { |room| room.name == 'bedroom'}.length
  end

end
