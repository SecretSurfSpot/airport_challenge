require_relative "plane"

class Airport
  DEFAULT_CAPACITY = 20
  attr_reader :plane_array, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @plane_array = []
    @capacity = capacity
  end

  # Method creates new plane (airport will have a new plane when plane lands)
  def land_plane(plane)
    @plane_array << plane
  end

  def take_off_plane
    @plane_array.pop
  end

  def check_weather
    rand(1..10) < 9 ? "sunny" : "stormy"
  end
end
