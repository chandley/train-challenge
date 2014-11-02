class Train
  attr_reader :location, :coaches

  def initialize(station)
    @location = station
    @coaches = []
  end

  def move_to(station)
    @location = station
  end

  def add_coach(coach)
    @coaches << coach
  end

  def remove_coach(coach)
    @coaches.delete(coach)
  end
  
end