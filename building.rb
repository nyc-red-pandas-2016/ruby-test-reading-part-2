class Building

  def initialize(args={})
    @address          = args.fetch(:address)
    @apartments       = args.fetch(:apartments)
  end

end
