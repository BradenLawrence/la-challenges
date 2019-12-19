require "spec_helper"

# As a slacker
# I want to view an individual articles show page
# So that I can learn more about that article
#
# Acceptance Criteria:
# [ ] When I visit /articles/:id, I should be brought to a page with the title, url and description of the article whose id I am viewing
# [ ] For example, visiting /articles/2 should bring me to a page with the article that has an id of 2

feature "User views a detail page:" do
  scenario "visit an article's details page" do
    visit "/articles"
    click_on("Test Title")
    expect(page).to have_content("Test Title")
  end

  scenario "an article's details page should match its ID" do
    visit "/articles"
    click_on("Test Title")
    expect(page).to have_current_path("/articles/0")
  end

end
