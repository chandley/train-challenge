require_relative 'passenger_container'

class Station
  include PassengerContainer

  def touch_in(passenger)
    board(passenger)
  end
end