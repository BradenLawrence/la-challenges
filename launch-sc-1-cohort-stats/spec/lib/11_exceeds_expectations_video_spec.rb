require "spec_helper"

describe Video do
  let(:video) {Video.new("Watch me eat 50 hotdogs", "I wouldn't recommend this.", "http://www.not_a_real_website.hotdog/videos/video1.mov")}

  describe ".new" do
    it "takes a name, body, and url as arguments" do
      expect{video}.not_to raise_error
    end

    describe "#name" do
      it "has an attribute reader for name" do
        expect(video.name).to eq("Watch me eat 50 hotdogs")
      end

      it "does not have an attribute writer for name" do
        expect {video.name = "Watch me go to the hospital"}.to raise_error(NoMethodError)
      end
    end

    describe "#body" do
      it "has an attribute reader for body" do
        expect(video.body).to eq("I wouldn't recommend this.")
      end

      it "does not have an attribute writer for body" do
        expect {video.body = "I really should have known better."}.to raise_error(NoMethodError)
      end
    end

    it "has an attribute reader for url" do
      expect(video.url).to eq("http://www.not_a_real_website.hotdog/videos/video1.mov")
    end

    it "does not have an attribute writer for url" do
      expect {video.url = "http://youtube.hotdog/videos/rickroll.mov"}.to raise_error(NoMethodError)
    end
  end

  describe "#submittable?" do
    it "returns 'false'" do
      expect(video.submittable?).to eq(false)
    end
  end
end
