class Train
  attr_reader :location

  def initialize(station)
    @location = station
  end

  def move(station)
    @location = station
  end

end