require 'spec_helper'

feature "view teams index" do

  # As a kickball fan
  # I want to view a page with the names of each team
  # So that I can learn which teams are in the league

  scenario "user visits /teams path" do
    visit "/teams"
    expect(page).to have_content("Simpson Slammers")
  end
end
