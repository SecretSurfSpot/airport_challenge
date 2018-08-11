require_relative "plane"

class Airport

  attr_reader :plane_array

  def initialize
    @plane_array = []
  end

  # Method creates new plane (airport will have a new plane when plane lands)
  def land_plane(plane)
    @plane_array << plane
  end

  def take_off_plane
  end
end
