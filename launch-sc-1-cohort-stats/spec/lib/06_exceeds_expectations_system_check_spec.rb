require "spec_helper"

describe SystemCheck do
  let(:system_check) do
    due = Date.parse("2020/08/21")
    SystemCheck.new("Grocery List with Fetch", due)
  end

  let(:zoey) { Student.new("Zoey Bartlett", "zoey.bartlett@gmail.com") }
  let(:charlie) { Student.new("Charlie Young", "charlie.young@gmail.com") }
  let(:jed) { Student.new("Josiah Barlett", "josiah.bartlett@gmail.com") }


  describe "#average_grade" do
    it "returns the average score for all submissions" do
      submission_1 = SystemCheckSubmission.new("binding.pry", zoey)
      system_check.add_submission(submission_1)
      submission_1.assign_grade(Grade::MEETS_EXPECTATIONS)

      submission_2 = SystemCheckSubmission.new("require 'sinatra'", charlie)
      system_check.add_submission(submission_2)
      submission_2.assign_grade(Grade::EXCEEDS_EXPECTATIONS)

      submission_3 = SystemCheckSubmission.new("puts 'steak'", jed)
      system_check.add_submission(submission_3)
      submission_3.assign_grade(Grade::DOES_NOT_MEET_EXPECTATIONS)

      sum = Grade::MEETS_EXPECTATIONS
      sum += Grade::EXCEEDS_EXPECTATIONS
      sum += Grade::DOES_NOT_MEET_EXPECTATIONS
      average = sum / 3.0

      expect(system_check.average_grade).to eq(average)
    end
  end

  describe "#did_student_complete_system_check?" do
    it "returns 'true' if a submission exists for that student" do
      system_check = SystemCheck.new("Grocery List using Postgres", Date.parse("2020/08/28"))
      submission_1 = SystemCheckSubmission.new("Bounding Box", charlie)
      system_check.add_submission(submission_1)
      submission_2 = SystemCheckSubmission.new("Bounding Box", jed)
      system_check.add_submission(submission_2)

      expect(system_check.did_student_complete_system_check?(jed)).
        to eq(true)
    end

    it "returns 'false' if submission does not exist for that student" do
      system_check = SystemCheck.new("Grocery List using Postgres", Date.parse("2020/08/28"))
      expect(system_check.did_student_complete_system_check?(zoey)).
        to eq(false)
    end
  end
end
