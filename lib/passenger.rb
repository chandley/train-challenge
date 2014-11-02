class Passenger

  attr_reader :destination, :cash

  def initialize(destination, cash)
    @destination = destination
    @cash = cash
  end

  def at_destination?(current_station)
    current_station == @destination
  end
  

end