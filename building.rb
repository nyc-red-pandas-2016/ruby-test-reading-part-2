class Building

  attr_accessor :apartments

  def initialize(args={})
    @address          = args.fetch(:address, '')
    @apartments       = args.fetch(:apartments, [])
  end

  def total_room_count
    @apartments.inject(0) { |sum, apartment| sum += apartment.rooms.length }
  end

  def total_monthly_revenue
    @apartments.inject(0) { |sum, apartment| sum += apartment.monthly_rent }
  end

  def apartments_by_rent
    @apartments.sort { |a, b| b.monthly_rent <=> a.monthly_rent}
  end

  def find_apartments_by_bedroom_count(n)
    @apartments.find { |apartment| apartment.bedroom_count == n }
  end

  def total_sqft
    @apartments.inject(0) { |sum, apartment| sum += apartment.total_sqft }
  end

end
