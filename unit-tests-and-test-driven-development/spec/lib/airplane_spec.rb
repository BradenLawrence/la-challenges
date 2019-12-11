require_relative "../../lib/airplane"

describe Airplane do
  describe "#flying?" do
    context "when the plane is flying" do
      it "returns true" do
        expect(Airplane.new("flying").flying?).to eq true
      end
    end

    context "when the plane is grounded" do
      it "returns false" do
        expect(Airplane.new("grounded").flying?).to eq false
      end
    end
  end

  describe "#status" do
    it "tells the user we are in the air if we are flying" do
      airplane = Airplane.new("flying")
      expect(airplane.status).to eq "We're in the air!"
    end

    it "tells the user we are on the ground if we aren't flying" do
      airplane = Airplane.new("grounded")
      expect(airplane.status).to eq "We're waiting for takeoff."
    end
  end

  describe "#set_total_passengers" do
    it "accepts a number and sets total_passengers" do
      airplane = Airplane.new("grounded")
      airplane.set_total_passengers(5)

      expect(airplane.total_passengers).to eq(5)
    end
  end

end
