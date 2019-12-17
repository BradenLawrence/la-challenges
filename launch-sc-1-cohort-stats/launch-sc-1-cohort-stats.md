## Instructions

You have been tasked with creating an Object-Oriented system to keep track of
the happenings at a certain educational institution not unlike Launch Academy. A few engineers have already provided tests for the features needed for the system. However, they need your help satisfying these tests so that they can track students and their students system check submissions for each of their cohorts. Based on a product planning session, you have determined these are the ruby classes you will need:

* `Student`
* `SystemCheckSubmission`
* `SystemCheck`
* `Cohort`

### Getting Set Up

Run the following commands from your terminal:

```
$ et get launch-sc-1-cohort-stats
$ cd launch-sc-1-cohort-stats
$ bundle install
$ rspec spec
```

Let the tests guide your development.

## Meeting Expectations Requirements

Make the following tests pass by adding code to the `lib` folder:

1. `spec/lib/01_student_spec.rb`
2. `spec/lib/02_system_check_submission_spec.rb`
3. `spec/lib/03_system_check_spec.rb`
4. `spec/lib/04_cohort_spec.rb`


### Tips

* Take a moment to familiarize yourself with the codebase. Look at each provided file, especially your test files, to get an idea of what is expected of you.
* Focus on one failing test at a time:
  - Add the line `--fail-fast` to the `.rspec` file if you would like the test suite to stop running on the first failed test.
  - Or, to run one spec file at a time, type in `rspec` followed by the path to the test file (e.g. - `rspec spec/lib/01_student_spec.rb`).
* Complete the tests in the order listed above.
* RSpec will tell you exactly what to do. Use the following workflow:
  - Run the test suite.
  - Read the error message.
  - If you're confused by the error check the actual test file to see how it's set up.
  - Do the simplest implementation, without "hard coding" values, that corrects the error.
  - Repeat.
* Once the test suite is passing, disregarding pending tests, please submit your code by running `et submit`.
* **DO NOT** start the requirements for exceeding expectations before you have completed the requirements necessary for meeting expectations.

## Exceeding Expectations Requirements

* Make the following tests pass by adding code to the `lib` folder:
    1. `spec/lib/05_exceeds_expectations_system_check_submission_spec.rb`
    2. `spec/lib/06_exceeds_expectations_system_check_spec.rb`
    3. `spec/lib/07_exceeds_expectations_cohort_spec.rb`
* Note, these tests are currently being skipped by rspec. To start this section, change all of the `xdescribe` keywords to `describe` within the above files.
* These need to pass with implementation that does not have "hard coded data". Once these tests pass, you should get `0 failures` and no pending tests when you run `rspec`.

In addition, write a `Lesson` class, then write the following classes that will inherit from the `Lesson` class: `Article`, `Challenge`, and `Video`. Update the `System Check` class to also inherit from the `Lesson` class.

* The `Lesson` class is instantiated with a `name` and `body`, which are both readable and writeable.
* The `Lesson` class has a `#submittable?` method that returns `false`.
* In contrast to the `Lesson` class, `Challenge` and `SystemCheck` classes are submittable. Ensure that calling `#submittable?` on these objects returns `true`.
* In addition to a `name` and `body` (from `Lesson`), a `Video` class is also instantiated with a `url` that is readable, but not writeable.
* Write RSpec tests for these functionalities.

__Note__: Make sure to refactor the `SystemCheck` class and RSpec test so that `Lesson` objects have the appropriate functionality.
