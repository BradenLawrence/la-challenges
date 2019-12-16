class Cohort
  attr_reader :title, :start_date, :end_date, :students, :system_checks, :postgrad_kickoff

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
    @postgrad_kickoff = @end_date + 4
  end

  def enroll(new_student_object)
    if @students.find {|student| student == new_student_object}.nil?
      @students << new_student_object
    end
  end

  def assign(system_check_object)
    @system_checks << system_check_object
  end

  def roster
    summary = ""
    summary += @title + "\n"
    @students.each do |student|
      summary += "#{student.name} #{student.email}\n"
    end
    return summary
  end

  def system_check_completed?(system_check_object)
    @students.each do |student_query|
      found_submission = system_check_object.submissions.find do |submission|
        submission.student == student_query
      end
      if found_submission.nil?
        return false
      end
    end
    return true
  end
end
