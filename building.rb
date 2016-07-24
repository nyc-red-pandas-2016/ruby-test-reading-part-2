class Building
  attr_reader :apartments, :address

  def initialize(args = {})
    @address = args.fetch(:address)
    @apartments = args.fetch(:apartments, [])
    # @total_room_count = calculate_total_room_count
    # @total_monthly_revenue = calculate_total_monthly_revenue
  end

  def total_room_count
    total_room_count = 0
    @apartments.each { |apartment| total_room_count += apartment.room_count }
    total_room_count
  end

  def total_monthly_revenue
    total_monthly_revenue = 0
    @apartments.each { |apartment| total_monthly_revenue += apartment.monthly_rent }
    total_monthly_revenue
  end

  def apartments_by_rent
    @apartments.sort_by { |apartment| apartment.monthly_rent }.reverse
  end

  def find_apartments_by_bedroom_count(bedroom_count)
    @apartments.find { |apartment| apartment.bedroom_count == bedroom_count }
  end

  def total_sqft
    total_sqft = 0
    @apartments.each { |apartment| total_sqft += apartment.total_sqft }
    total_sqft
  end
end
