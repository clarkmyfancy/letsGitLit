#feature/main_page.feature Feature: Homepage As a product manager I want users to be greeted with a homepage So that they can choose to either add their info to the database or view all users in the database Scenario: User sees options to sign up or view accounts When I go to the home page Then I should see the options

When(/^I go to the homepage$/) do visit root_path end 
Then(/^I should see the sign up and view accounts options$/) do expect(page).to have_content("sign up") and have_content("view accounts") end
