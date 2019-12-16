require "spec_helper"

describe Lesson do
  let(:lesson) {Lesson.new("Cohort Stats", "Wow so meta!")}

  describe ".new" do
    it "takes a name and body as arguments" do
      expect{lesson}.not_to raise_error
    end

    describe "#name" do
      it "has an attribute reader for name" do
        expect(lesson.name).to eq("Cohort Stats")
      end

      it "does not have an attribute writer for name" do
        expect {lesson.name = "My Awesome Lesson"}.to raise_error(NoMethodError)
      end
    end

    describe "#body" do
      it "has an attribute reader for body" do
        expect(lesson.body).to eq("Wow so meta!")
      end

      it "does not have an attribute writer for body" do
        expect {lesson.body = "Even more meta!"}.to raise_error(NoMethodError)
      end
    end
  end

  describe "#submittable?" do
    it "returns 'false'" do
      expect(lesson.submittable?).to eq(false)
    end
  end
end
