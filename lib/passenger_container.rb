module PassengerContainer

  DEFAULT_CAPACITY = 40

  def passengers
    @passengers ||= []    
  end

  def board(passenger)
    raise "Can't board passenger when full" if full?
    passengers << passenger
  end

  def release(passenger)
    raise "Passenger not found" if passengers.delete(passenger).nil?
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(new_capacity)
    @capacity = new_capacity
  end

  def full?
    passengers.size >= capacity
  end

end