class Building

  attr_reader :address, :apartments

  def initialize(args = {})
    @address = args.fetch(:address, '')
    @apartments = args.fetch(:apartments, [])
  end

  def total_room_count
    room_array = @apartments.map{ |apt| apt.rooms }
    room_array.each { |room| }
  end

  def total_monthly_revenue

  end

end
