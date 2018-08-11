require "airport"
require "plane"

describe Airport do

  it "Verifies land_plane exists" do
    expect(subject).to respond_to(:land_plane).with(1).argument
  end
  # Can use single line code below:
  # it { is_expected.to respond_to(:land_plane).with(1).argument }

  it "Verifies a plane landed" do
    # Need to verify a plane landed (plane_array includes a plane)
    plane = Plane.new
    subject.land_plane(plane)
    expect(subject.plane_array).to include(plane)
  end

  describe "#land_plane(plane)" do
    it "raises an error when airport full" do
      Airport::DEFAULT_CAPACITY.times { subject.land_plane Plane.new }
      expect { subject.land_plane(Plane.new) }.to raise_error "You cannot land the airport is full"
    end
  end


  it "Verifies take_off_plane exists" do
    expect(subject).to respond_to :take_off_plane
  end

  it "Verifies take_off_plane includes an array" do
    expect(subject.plane_array).to include()
  end





  it { is_expected.to respond_to(:check_weather) }

  it "verifies check weather " do
    expect(subject.check_weather).to eq("sunny")
  end
   # doesnt work?!?: it { is_expected(subject.check_weather).to eq("sunny") }

   #it { is_expected(subject.capacity).to eq(20)}
   it "verify when initialized capacity is 20" do
     expect(subject.capacity).to eq(20)
   end

end
