include Grade

class SystemCheckSubmission
  attr_reader :solution, :student, :grade

  def initialize(solution, student)
    @solution = solution
    @student = student
    @grade = nil
  end

  def assign_grade(score)
    if GRADES[score].nil?
      return "Invalid Grade Error!"
    else
      return @grade = score
    end
  end

  def graded?
    !@grade.nil?
  end
end
