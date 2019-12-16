# FOR NON-CORE STORIES ONLY

require "spec_helper"

RSpec.describe Magical_Creature do
  let(:owlbear) { Magical_Creature.new("Owlbear", "Is an owl and a bear", 47) }

  describe "#initialize" do
    it "creates a Magical_Creature" do
      expect(owlbear).to be_a(Magical_Creature)
    end
  end
end
