Then(/^I am on the contact us page$/) do
  @pages.contact_us_page.visit
  #sleep 5
end

Then(/^I should see Contact Us page$/) do
  # TODO: create assertions to confirm that user is on the contact page
  pending
end

When('I fill the first name field with {string}') do |first_name|
  @pages.contact_us_page.fill_first_name(first_name)
end

When('I fill the last name field with {string}') do |last_name|
  @pages.contact_us_page.fill_last_name(last_name)
end

Then(/^I select "(services|apply for a job|to pr department|any other)" in the topic dropdown$/) do |topic|
  @pages.contact_us_page.select_topic(topic)
  #sleep 5
end

Then(/^I select "(privacy policy|subscribe)" checkbox$/) do |checkbox_type|
  if checkbox_type == 'privacy policy'
    @pages.contact_us_page.select_privacy_checkbox
  else
    @pages.contact_us_page.select_subscribe_checkbox
  end
  sleep 5
end