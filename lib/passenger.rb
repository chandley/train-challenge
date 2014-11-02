class Passenger

  attr_reader :destination

  def initialize(destination)
    @destination = destination
  end

  def at_destination?(current_station)
    current_station == @destination
  end
  
  def touch_out_passengers_at_destination

  end
end