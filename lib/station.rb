require_relative 'passenger_container'

class Station
  include PassengerContainer

  def touch_in(passenger)
    board(passenger)
  end

  def touch_out(passenger)
    alight(passenger)
  end

  def touch_out_passengers_at_destination
    passengers_at_destination = passengers.select {|passenger| passenger.at_destination?(self)}
    passengers_at_destination.each {|passenger| self.touch_out(passenger)}
  end
end