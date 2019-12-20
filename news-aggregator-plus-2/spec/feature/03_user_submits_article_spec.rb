require "spec_helper"

# As a slacker
# I want to be able to submit an incredibly interesting article
# So that other slackers may benefit from my distraction
#
# Acceptance Criteria:
# [X] When I visit /articles/new it has a form to submit a new article.
# [X] The form accepts an article title, URL, and description.
# [ ] When I successfully post an article, it should be saved to a CSV file.
# [ ] If I try to submit an empty form, I stay on my form page, and nothing is saved to my CSV file.

feature "User submits an article:" do
  scenario "visit the page to submit a new article" do
    visit "/articles"
    click_on("Add new article")
    expect(page).to have_current_path("/articles/new")
  end

  scenario "input the information about a new article" do
    visit "/articles/new"
    fill_in("title", with: "My Title")
    fill_in("description", with: "My description for the article")
    fill_in("url", with: "https://myfakepage.pizza")
    expect(find_field("title").value).to eq("My Title")
    expect(find_field("description").value).to eq("My description for the article")
    expect(find_field("url").value).to eq("https://myfakepage.pizza")
  end

  scenario "the new article is saved" do
    visit "/articles/new"
    fill_in("title", with: "My Title")
    fill_in("description", with: "My description for the article")
    fill_in("url", with: "https://myfakepage.pizza")
    click_on("submit")
    expect(page).to have_content("My Title")
    expect(page).to have_content("My description for the article")
  end

  scenario "an empty form is not submitted" do
    visit "/articles/new"
    fill_in("title", with: "My Title")
    fill_in("description", with: "My description for the article")
    click_on("submit")
    expect(page).to have_current_path("/articles/new")
  end
end
