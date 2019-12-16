# FOR NON-CORE STORIES ONLY

require "spec_helper"

RSpec.describe Magical_Creature do
  let(:owlbear) { Magical_Creature.new("Owlbear", "Is an owl and a bear", 47) }
  let(:weretortoise) { Magical_Creature.new("Were-Tortoise", "Turns into a shelled monstrosity during the full moon.", 201) }
  let(:xanathar) { Magical_Creature.new("Xanathar the ancient", "It's got a real mean look.", nil) }

  describe ".new" do
    it "creates a Magical_Creature" do
      expect(owlbear).to be_a(Magical_Creature)
    end

    it "has a name" do
      expect(owlbear.name).to eq("Owlbear")
    end

    it "has a magical ability" do
      expect(owlbear.magical_ability).to eq("Is an owl and a bear")
    end

    it "has an age" do
      expect(owlbear.age).to eq(47)
    end
  end

  describe "#ancient?" do
    it "is not ancient if its age is less than 200" do
      expect(owlbear.ancient?).to eq(false)
    end

    it "is ancient if its age is greater than 200" do
      expect(weretortoise.ancient?).to eq(true)
    end

    it "is ancient if it is ageless" do
      expect(xanathar.ancient?).to eq(true)
    end
  end
end
