module PassengerContainer
  attr_reader :passengers

  def passengers
    @passengers ||= []    
  end

  def receive(passenger)
    passengers << passenger
  end

  def release(passenger)
    passengers.delete(passenger)
  end
end