class Building
  attr_reader :address, :apartments
  def initialize(args={})
    @address = args.fetch(:address)
    @apartments = args.fetch(:apartments, [])
  end

  def total_room_count
    apartments.reduce(0){|sum, apartment| sum + apartment.room_count}
  end

  def total_monthly_revenue
    apartments.reduce(0) {|sum, apartment| sum + apartment.monthly_rent}
  end

  def apartments_by_rent
    apartments.sort {|apartment1, apartment2| apartment2.monthly_rent <=> apartment1.monthly_rent}
  end

  def find_apartments_by_bedroom_count(rooms)
    apartments.find{|apartment| apartment.bedroom_count == rooms}
  end

  def total_sqft
    apartments.reduce(0) {|sum, apartment| sum + apartment.total_sqft}
  end
end
