module PassengerContainer

  DEFAULT_CAPACITY = 40

  def passengers
    @passengers ||= []    
  end

  def receive(passenger)
    passengers << passenger
  end

  def release(passenger)
    passengers.delete(passenger)
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