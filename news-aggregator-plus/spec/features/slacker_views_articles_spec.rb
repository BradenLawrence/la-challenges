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
    visit '/'
    expect(page).to have_current_path('/articles')
  end

  scenario 'view the titles of each article' do
    visit '/articles'
    expect(page).to have_content('Navy pilots request')
    expect(page).to have_content('On Amazon Prime')
    expect(page).to have_content('Man stolen as a baby')
    expect(page).to have_content('Fire At Tesla')
  end

  scenario 'view the descriptions of each article' do
    visit '/articles'
    expect(page).to have_content("Navy pilots don’t trust")
    expect(page).to have_content('searching ugly cast')
    expect(page).to have_content('55 years old now')
    expect(page).to have_content('Ford Driver starts fire')
  end

  scenario 'view the source of each link' do
    visit '/articles'
    expect(page.find('a[href="https://popularmilitary.com/navy-pilots-request-to-be-armed-because-they-dont-trust-overweight-police-at-military-bases/"]').path).to_not eq(nil)
    expect(page.find('a[href="https://www.bbngnews.com/2019/12/on-amazon-prime-lord-of-rings-is.html"]').path).to_not eq(nil)
    expect(page.find('a[href="https://www.8newsnow.com/news/local-news/man-stolen-as-a-baby-found-living-in-michigan-55-years-after-crime/?fbclid=IwAR1jvhk5EVdRVEARpaI9o6xqoX83LipTlQv-IvN5j46NnKOabGg3Y1cwM88"]').path).to_not eq(nil)
    expect(page.find('a[href="https://www.reddit.com/r/nottheonion/comments/ebxsna/fire_at_tesla_supercharger_caused_by_ford_mustang/"]').path).to_not eq(nil)
  end

  # Moving on from this test.
  # scenario 'links should open in a new tab' do
  #   visit '/articles'
  #   click_link("sourceURL_0")
  # end

end
