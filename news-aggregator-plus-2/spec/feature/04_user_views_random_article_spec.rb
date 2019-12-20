require "spec_helper"

# As an errant slacker
# I want to see a random article
# So that I can spend less time choosing which article to read
#
# Acceptance Criteria:
# [ ] When I visit /random it has a button with the text "Random Button".
# [ ] When the button is clicked, a fetch call should generate a request to an API endpoint on the Sinatra backend
# [ ] The API endpoint should return a random article as a response, and that article's information will need to append to the page.

feature "User views a random article" do
  scenario "visit the random article route" do
    visit "/random"
    expect(find("#random_button").text).to eq("Random Button")
  end

  scenario "request a new random article" do
    visit "/random"
    click_on("Random Button")
    expect(all("li").count).to eq(1) # Needs to wait to async maybe?
    expect(find("#error").text).to eq("")
  end

  scenario "view the random article on the current page" do
    visit "/random"
    click_on("Random Button")
    expect() # ???
  end

end
