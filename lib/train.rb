class Train
  attr_reader :location, :coaches

  def initialize(station)
    @location = station
    @coaches = []
  end

  def move(station)
    @location = station
  end

  def add_coach(coach)
    @coaches << coach
  end

end