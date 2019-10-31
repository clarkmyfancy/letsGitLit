#features/link_click_view_accounts.feature Feature: Link CLick Scenario: User clicks the link to view accounts Given I am on the home page When I click on the provided link Then I should see a list of accounts

Given(/^I am on the homepage$/) do visit root_path end 
When(/^I click on the provided link$/) do click_on "click-me-view_accounts" end
Then(/^I should see the link click confirmation$/) do expect(page).to have_content("Account List") and have_content(table) end
