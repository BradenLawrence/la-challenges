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
    expect(find_button("random_button").value).to eq("Random Button")
  end

  scenario "request a new random article" do
    visit "/random"
    # find("#random_button").click
    click_on("Random Button")
    puts find("li")
    expect(all("ul").count).to eq(1)
    expect(find("#error").text).to eq("")
  end

  scenario "view the random article on the current page" do
    visit "/random"
    click_on("Random Button")
    expect() # ???
  end

end
