class Passenger

  def destination
    :old_street
  end

  def touch_in(station)
    station.receive(self)
  end


end