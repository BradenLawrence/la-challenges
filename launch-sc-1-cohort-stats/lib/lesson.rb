class Lesson
  attr_reader :name, :body

  def initialize(name, body)
    @name = name
    @body = body
  end

  def submittable?
    return false
  end
end
