require "spec_helper"

describe Cohort do
  let(:cohort) do
    Cohort.new("Cohort 30", Date.parse("2020/08/10"), Date.parse("2020/10/16"))
  end

  let(:cohort_with_students) do
    student_1 = Student.new("Sam Seaborn", "sam.seaborn@gmail.com")
    student_2 = Student.new("Josh Lyman", "josh.lyman@gmail.com")
    student_3 = Student.new("Toby Ziegler", "toby.ziegler@gmail.com")

    cohort.enroll(student_1)
    cohort.enroll(student_2)
    cohort.enroll(student_3)

    cohort
  end

  describe "#system_check_completed?" do
    let(:sam)  { cohort_with_students.students.first }
    let(:josh) { cohort_with_students.students[1] }
    let(:toby) { cohort_with_students.students.last }

    it "returns 'true' if everyone has submitted" do

      system_check = SystemCheck.new("Grocery List using Postgres", Date.parse("2015/08/28"))
      cohort_with_students.assign(system_check)

      [sam, josh, toby].each do |student|
        submission = SystemCheckSubmission.new("binding.pry", student)
        system_check.add_submission(submission)
      end

      expect(cohort.system_check_completed?(system_check)).
        to eq(true)
    end

    it "returns 'false' if we are missing submissions" do
      system_check = SystemCheck.new("Grocery List using Postgres", Date.parse("2015/08/28"))
      cohort_with_students.assign(system_check)

      [sam, sam, toby].each do |student|
        submission = SystemCheckSubmission.new("binding.pry", student)
        system_check.add_submission(submission)
      end

      expect(cohort.system_check_completed?(system_check)).
        to eq(false)
    end
  end
end
