require "spec_helper"

# As an errant slacker
# I want to receive an error message
# When I submit an invalid article
#
# Acceptance Criteria:
# [ ] If I do not specify a title, URL, and description, I receive an error message, and the submission form is re-rendered with the details I have previously submitted.
# [ ] If I specify an invalid URL, I receive an error message, and the submission form is re-rendered with the details I have previously submitted. A URL is valid if it begins with http.
# [ ] If I specify a description that doesn't have 20 or more characters, I receive an error message, and the submission form is re-rendered with the details I have previously submitted.
# [ ] The submitted article is not saved in any of the above cases.

feature "User submits invalid article:" do
  scenario "submitting an article without a title results in an error" do
    visit "/articles/new"
    fill_in("description", with: "My description for the article")
    fill_in("url", with: "https://myfakepage.pizza")
    click_on("submit")
    expect(@error).to_not eq(nil)
    expect(CSV.readlines(csv_file, headers: true).count).to eq(2)
  end
  scenario "submitting an article without a description results in an error" do
    visit "/articles/new"
    fill_in("title", with: "My Title")
    fill_in("url", with: "https://myfakepage.pizza")
    click_on("submit")
    expect(@error).to_not eq(nil)
    expect(CSV.readlines(csv_file, headers: true).count).to eq(2)
  end
  scenario "submitting an article without a url results in an error" do
    visit "/articles/new"
    fill_in("title", with: "My Title")
    fill_in("description", with: "My description for the article")
    click_on("submit")
    expect(@error).to_not eq(nil)
    expect(CSV.readlines(csv_file, headers: true).count).to eq(2)
  end

  scenario "submitting an article without a valid url results in an error" do
    visit "/articles/new"
    fill_in("title", with: "My Title")
    fill_in("description", with: "My description for the article")
    fill_in("url", with: "a_bad_url")
    click_on("submit")
    expect(@error).to_not eq(nil)
    expect(CSV.readlines(csv_file, headers: true).count).to eq(2)
  end

  scenario "submitting an article that has a description shorter than 20 characters results in an error" do
    visit "/articles/new"
    fill_in("title", with: "My Title")
    fill_in("description", with: "My description")
    fill_in("url", with: "https://myfakepage.pizza")
    click_on("submit")
    expect(@error).to_not eq(nil)
    expect(CSV.readlines(csv_file, headers: true).count).to eq(2)
  end
end
