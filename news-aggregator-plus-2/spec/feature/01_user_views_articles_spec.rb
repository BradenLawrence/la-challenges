require "spec_helper"

# As a slacker
# I want to be able to visit a page that shows me all the submitted articles
# So that I can distract myself from the actual work I have to do
#
# Acceptance Criteria:
# [X] When I visit /articles I should be able to see all the articles that have been submitted.
# [X] Each article should show the description, title, and URL.
# [X] If I click on the URL it should take me to the relevant page inside of a new tab.

feature "User views articles:" do

  scenario "visit the /articles route" do
    visit "/"
    expect(page).to have_current_path("/articles")
  end

  scenario "view all of the submitted articles" do
    visit "/articles"
    expect(page).to have_content("Test Title")
    expect(page).to have_content("Test Description")
    expect(page).to have_content("A Fake Title")
    expect(page).to have_content("A Fake Description")
    anchor_tags = []
    all('a.sourceURL').each do |a|
      anchor_tags << a
      expect(a[:href]).to_not eq("")
    end
    expect(anchor_tags.count).to eq(2)
  end

  scenario "view an article's source URL in a new tab" do
    visit "/articles"
    anchor_tags = []
    all('a.sourceURL').each do |a|
      anchor_tags << a
      expect(a[:target]).to eq("_blank")
    end
    expect(anchor_tags.count).to eq(2)
  end

end
