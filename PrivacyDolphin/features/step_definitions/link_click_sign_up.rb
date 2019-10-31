#features/link_click_sign_up.feature Feature: Link CLick Scenario: User clicks the link to sign up Given I am on the home page When I click on the provided link Then I should see a list of account items to input

Given(/^I am on the homepage$/) do visit root_path end 
When(/^I click on the provided link$/) do click_on "click-me-sign-up" end
Then(/^I should see the link click confirmation$/) do expect(page).to have_content("Student Info") and have_content("Name") and have_content("Password") and have_content("Major") and have_content("Graduation Year") end
