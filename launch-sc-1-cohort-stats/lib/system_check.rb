require_relative "lesson"

class SystemCheck < Lesson
  attr_reader :submissions

  def initialize(name, date)
    @submissions = []
  end

  def add_submission(submission_object)
    @submissions << submission_object
  end

  def average_grade
    sum = @submissions.reduce(0) do |total, submission|
      total += submission.grade
    end
    return sum / @submissions.count.to_f
  end

  def did_student_complete_system_check?(student_object)
    found_student = @submissions.find do |submission|
      submission.student == student_object
    end
    return !found_student.nil?
  end

  def submittable?
    return true
  end
end
