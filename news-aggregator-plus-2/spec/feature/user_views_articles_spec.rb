require "spec_helper"

# As a slacker
# I want to be able to visit a page that shows me all the submitted articles
# So that I can distract myself from the actual work I have to do
#
# Acceptance Criteria:
# [ ] When I visit /articles I should be able to see all the articles that have been submitted.
# [ ] Each article should show the description, title, and URL.
# [ ] If I click on the URL it should take me to the relevant page inside of a new tab.

feature "User views articles:" do
  before(:each) do
    
  end

  after(:each) do
    reset_csv
  end

  scenario "visit the /articles route" do
    visit "/"
    expect(page).to have_current_path("/articles")
  end

  scenario "view all of the submitted articles" do

  end

  scenario "view an article's source URL in a new tab" do

  end

end
