require "spec_helper"

# As a slacker
# I want to be able to submit an incredibly interesting article
# So that other slackers may benefit from my distraction
#
# Acceptance Criteria:
# [ ] When I visit /articles/new it has a form to submit a new article.
# [ ] The form accepts an article title, URL, and description.
# [ ] When I successfully post an article, it should be saved to a CSV file.
# [ ] If I try to submit an empty form, I stay on my form page, and nothing is saved to my CSV file.

feature "User submits an article:" do
  before(:each) do
    reset_csv
  end
  
  scenario "visit the page to submit a new article" do

  end

  scenario "input the information about a new article" do

  end

  scenario "the new article is saved" do

  end

  scenario "an empty form is not submitted" do

  end
end
