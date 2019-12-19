require "spec_helper"

# As a plagiarizing slacker
# I want to receive an error message
# When I submit an article that has already been submitted
#
# Acceptance Criteria:
# [ ] If I specify a URL that has already been submitted, I receive an error message, and the submission form is re-rendered with the details I have previously submitted.
# [ ] The submitted article is not saved in the above case.

feature "User submits an article that already exists:" do
  scenario "receive an error if an inputted url matches an existing article" do
    visit "/articles/new"
    fill_in("title", with: "My Title")
    fill_in("description", with: "My description for the article")
    fill_in("url", with: "https://www.testurl.pizza") # Duplicate from spec_helper
    click_on("submit")
    expect(page).to have_current_path("/articles/new")
    expect(@error).to_not eq(nil)
  end

  scenario "the duplicate article is not saved" do
    visit "/articles/new"
    fill_in("title", with: "My Title")
    fill_in("description", with: "My description for the article")
    fill_in("url", with: "https://www.testurl.pizza") # Duplicate from spec_helper
    click_on("submit")
    expect(CSV.readlines(csv_file, headers: true).count).to eq(2)
  end

end
