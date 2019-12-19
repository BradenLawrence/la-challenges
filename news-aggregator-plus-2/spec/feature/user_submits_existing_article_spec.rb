require "spec_helper"

# As a plagiarizing slacker
# I want to receive an error message
# When I submit an article that has already been submitted
#
# Acceptance Criteria:
# [ ] If I specify a URL that has already been submitted, I receive an error message, and the submission form is re-rendered with the details I have previously submitted.
# [ ] The submitted article is not saved in the above case.

feature "User submits an article that already exists:" do
  before(:each) do
    reset_csv
  end

  scenario "receive an error if an inputted url matches an existing article" do

  end

  scenario "the duplicate article is not saved" do

  end

end
