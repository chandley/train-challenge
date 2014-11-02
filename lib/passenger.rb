class Passenger

  def destination
    :old_street
  end

  def touch_in(station)
    station.board(self)
  end


end