require "spec_helper"

describe Article do
  let(:article) {Article.new("Intro to Inheritance", "You're doing it right now!")}

  describe ".new" do
    it "takes a name and body as arguments" do
      expect{article}.not_to raise_error
    end

    describe "#name" do
      it "has an attribute reader for name" do
        expect(article.name).to eq("Intro to Inheritance")
      end

      it "does not have an attribute writer for name" do
        expect {article.name = "Next lesson"}.to raise_error(NoMethodError)
      end
    end

    describe "#body" do
      it "has an attribute reader for body" do
        expect(article.body).to eq("You're doing it right now!")
      end

      it "does not have an attribute writer for body" do
        expect {article.body = "Not writable"}.to raise_error(NoMethodError)
      end
    end
  end

  describe "#submittable?" do
    it "returns 'false'" do
      expect(article.submittable?).to eq(false)
    end
  end
end
