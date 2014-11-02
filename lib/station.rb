class Station
  attr_reader :passengers

  def passengers
    @passengers ||= []    
  end

  def receive(passenger)
    passengers << passenger

  end
end