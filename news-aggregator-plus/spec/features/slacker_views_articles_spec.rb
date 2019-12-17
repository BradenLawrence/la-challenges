require 'spec_helper'
feature 'Slacker views articles' do

# As a slacker
# I want to be able to visit a page that shows me all the submitted articles
# So that I can distract myself from the actual work I have to do
# Acceptance Criteria:
#
# - When I visit /articles I should be able to see all the articles that have been submitted.
# - Each article should show the description, title, and URL.
# - If I click on the URL it should take me to the relevant page inside of a new tab.
# - If you want to use an external link with sinatra, you have to start the link with either http:// or https:// or it will automatically assume that it is an internal link.

  scenario 'view all submitted articles' do
    visit '/articles'
    expect(page).to have_content?('Article_name') # replace with real article name once available
  end

  scenario 'view the details of an article' do
    visit '/articles'
    expect(page).to have_content?()
  end

end
