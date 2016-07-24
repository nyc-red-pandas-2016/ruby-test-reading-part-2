class Building
  attr_reader :apartments, :address

  def initialize(args = {})
    @address = args.fetch(:address)
    @apartments = args.fetch(:apartments, [])
    # @total_room_count = calculate_total_room_count
    # @total_monthly_revenue = calculate_total_monthly_revenue
  end

  def total_room_count
    @apartments.map { |apartment| apartment.room_count }.inject(:+)
  end

  def total_monthly_revenue
    @apartments.map { |apartment| apartment.monthly_rent }.inject(:+)
  end

  def apartments_by_rent
    @apartments.sort_by { |apartment| apartment.monthly_rent }.reverse
  end

  def find_apartments_by_bedroom_count(bedroom_count)
    @apartments.find { |apartment| apartment.bedroom_count == bedroom_count }
  end

  def total_sqft
    @apartments.map { |apartment| apartment.total_sqft }.inject(:+)
  end
end
