require "airport"
require "plane"

describe Airport do

  it "Verifies land_plane exists" do
    expect(subject).to respond_to :land_plane
  end

  it "Verifies a plane landed" do
    # Need to verify a plane landed (landed = true?)
    plane = subject.land_plane
    expect(plane).to be_plane_exists
  end

  it "Verifies take_off_plane exists" do
    expect(subject).to respond_to :take_off_plane
  end

end
