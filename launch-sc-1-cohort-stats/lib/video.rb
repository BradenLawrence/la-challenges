require_relative "lesson"

class Video < Lesson
  attr_reader :name, :body, :url

  def initialize(name, body, url)
    super(name, body)
    @url = url
  end
end
