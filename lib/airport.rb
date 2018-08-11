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
    raise "You cannot land the airport is full" if full?
    @plane_array << plane
  end

  def take_off_plane
    @plane_array.pop
  end

  def check_weather
    rand(1..10) > 8 ? "stormy" : "sunny"
  end


  private
  def full?
    @plane_array.length >= DEFAULT_CAPACITY
  end

  def empty?
    @plane_array.empty?
  end
end
