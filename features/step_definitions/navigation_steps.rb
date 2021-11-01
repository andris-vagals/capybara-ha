When(/^I am in test automation page$/) do
  @pages.test_automation_page.visit
end

When(/^I navigate to Test automation page$/) do
  @pages.navigation_bar.go_to_test_automation_page
end

When(/^I navigate to Contact Us page$/) do
  @pages.navigation_bar.go_to_contact_us_page
end


When(/^I navigate to Mobile application testing page$/) do
  @pages.navigation_bar.go_to_mobile_testing
end

Then(/^I should see Mobile application testing page$/) do
  expectation = @pages.mob_app_testing_page.contains_section?('PLATFORMS')
  expect(expectation).to eq(true)
end