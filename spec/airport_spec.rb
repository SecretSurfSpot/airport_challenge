require "airport"
require "plane"

describe Airport do
  #let(:mockCheckWeather) { double :check_weather, check_weather: "sunny" }
  let(:mockCheckWeather) { "sunny" }

  it "Verifies land_plane exists" do
    expect(subject).to respond_to(:land_plane).with(1).argument
  end
  # Can use single line code below:
  # it { is_expected.to respond_to(:land_plane).with(1).argument }

  it "Verifies a plane landed" do
    # Need to verify a plane landed (plane_array includes a plane)
    allow(subject).to receive(:check_weather) {"sunny"}
    plane = Plane.new
    subject.land_plane(plane)
    # subject.check_weather
    # mockCheckWeather
    expect(subject.plane_array).to include(plane)
  end

  describe "#land_plane(plane)" do
    it "raises an error when airport full" do
      allow(subject).to receive(:check_weather) {"sunny"}
      Airport::DEFAULT_CAPACITY.times { subject.land_plane Plane.new }
      expect { subject.land_plane(Plane.new) }.to raise_error "You cannot land the airport is full"
    end
  end

  # Need test for land_plane and check error being raised if stormy weather

  it "Verifies take_off_plane exists" do
    expect(subject).to respond_to :take_off_plane
  end

  it "Verifies take_off_plane includes an array" do
    expect(subject.plane_array).to include()
  end



  # Need test for take_off_plane and check error being raised if stormy weather

  # Need test for take_off_plane (possibly included in needed test above)

  it { is_expected.to respond_to(:check_weather) }

   it "verifies check weather " do
     expect(subject.check_weather).to eq("sunny")
     #expect(mockCheckWeather).to eq("sunny")
   end
   # doesnt work?!?: it { is_expected(subject.check_weather).to eq("sunny") }

  # doesnt work?!?: #it { is_expected(subject.capacity).to eq(20)}
   it "verify when initialized capacity is 20" do
     expect(subject.capacity).to eq(20)
   end

end
