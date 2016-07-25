class Apartment

  attr_accessor :number, :rooms
  def initialize(args = {})
    @number = args.fetch(:number)
    @rooms = args.fetch(:rooms)
  end

  def total_sqft
  end

  def price_per_sqft
  end

  def room_count
  end

  def bedroom_count
  end

  def monthly_rent
  end

end
