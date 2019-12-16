require "spec_helper"

describe Challenge do
  let(:challenge) {Challenge.new("Eat 50 hotdogs", "The only winning move is not to play.")}

  describe ".new" do
    it "takes a name and body as arguments" do
      expect{challenge}.not_to raise_error
    end

    describe "#name" do
      it "has an attribute reader for name" do
        expect(challenge.name).to eq("Eat 50 hotdogs")
      end

      it "does not have an attribute writer for name" do
        expect {challenge.name = "Eat 51 hotdogs"}.to raise_error(NoMethodError)
      end
    end

    describe "#body" do
      it "has an attribute reader for body" do
        expect(challenge.body).to eq("The only winning move is not to play.")
      end

      it "does not have an attribute writer for body" do
        expect {challenge.body = "I just lost the game."}.to raise_error(NoMethodError)
      end
    end
  end

  describe "#submittable?" do
    it "returns 'true'" do
      expect(challenge.submittable?).to eq(true)
    end
  end
end
