require 'spec_helper'
feature 'Slacker submits articles' do
# As a slacker
# I want to be able to submit an incredibly interesting article
# So that other slackers may benefit from my distraction
# Acceptance Criteria:
#
# - When I visit /articles/new it has a form to submit a new article.
# - The form accepts an article title, URL, and description.
# - When I successfully post an article, it should be saved to a CSV file.
# - If I try to submit an empty form, I stay on my form page, and nothing is saved to my CSV file.

  scenario 'navigates to the submit page' do
    visit '/articles'
    click_link 'Submit a new article'
    expect(page).to have_current_path('/articles/new')
  end

  scenario 'a form is not submitted if any fields are blank' do
    visit '/articles/new'
    fill_in('title', with: 'New Title')
    fill_in('description', with: 'New Description')
    click_on('submit')
    visit '/articles'
    expect(page).to_not have_content('New Title')
    expect(page).to_not have_content('New Description')
  end

  # The following two tests add an article to the CSV file.
  # TODO - create a "testing" CSV file so that these tests do not interfere
  # with the live one. Also, remove the test data when done.
  scenario 'form accepts a title, url, and description' do
    visit '/articles/new'
    fill_in('title', with: 'New Title')
    fill_in('description', with: 'New Description')
    fill_in('url', with: 'New URL')
    click_on('submit')
    expect(page).to have_current_path('/articles')
  end

  scenario 'submitted form is saved to a CSV file' do
    visit '/articles/new'
    fill_in('title', with: 'New Title')
    fill_in('description', with: 'New Description')
    fill_in('url', with: 'New URL')
    click_on('submit')
    expect(page).to have_content('New Title')
    expect(page).to have_content('New Description')
    expect(page.find('a[id="sourceURL_5"]').path).to_not eq(nil)
  end


end
