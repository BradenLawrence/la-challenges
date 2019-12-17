require "spec_helper"

describe Student do
  describe ".new" do
    it "takes a name and email as arguments" do
      student = Student.new("Sam Seaborn", "sam.seaborn@gmail.com")
      expect(student).to be_a(Student)
    end
  end

  let(:student) { Student.new("Donna Moss", "donna.moss@gmail.com") }

  describe "#name" do
    it "has an attribute reader for name" do
      expect(student.name).to eq("Donna Moss")
    end

    it "does not have an attribute writer for name" do
      expect { student.name = "C. J. Cregg" }.to raise_error(NoMethodError)
    end
  end

  describe "#email" do
    it "has an attribute reader for email" do
      expect(student.email).to eq("donna.moss@gmail.com")
    end

    it "does not have an attribute writer for email" do
      expect { student.email = "dolores.landingham@gmail.com" }.to raise_error(NoMethodError)
    end
  end
end
