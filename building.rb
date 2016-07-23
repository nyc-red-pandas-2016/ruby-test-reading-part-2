class Building

  attr_reader :apartments

  def initialize(args={})
    @apartments = args.fetch(:apartments, [])
    @address = args.fetch(:address, "")
  end

  def total_room_count
    @apartments.inject(0) { |total, apartment| total += apartment.room_count }
  end

  def total_monthly_revenue
    @apartments.inject(0) { |total, apartment| total += apartment.monthly_rent }
  end

  def apartments_by_rent
    rent = @apartments.sort_by { |apartment| apartment.monthly_rent }
    rent.reverse
  end

  def find_apartments_by_bedroom_count(number)

  end

  def total_sqft
     @apartments.inject(0) { |total, apartment| total += apartment.total_sqft }
  end

end
