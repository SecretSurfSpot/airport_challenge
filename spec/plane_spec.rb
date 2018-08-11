require "plane"
require "airport"

describe Plane do

  it "Verify plane exists" do
    expect(subject).to respond_to :plane_exists?
  end

end
