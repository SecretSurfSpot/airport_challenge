require_relative "plane"

class Airport

  # Method creates new plane (airport will have a new plane when plane lands)
  def land_plane(plane)
    Plane.new
  end

  def take_off_plane
  end
end
