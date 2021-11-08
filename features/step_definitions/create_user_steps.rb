Given('I am on the create user page') do
  @pages.create_user_page.visit
  expect(@pages.create_user_page.contains_section?('Your Personal Details')).to eq(true)
end

When('I input the first name {string}') do |first_name|
  @pages.create_user_page.input_first_name(first_name)
end

When('I input the last name {string}') do |last_name|
  @pages.create_user_page.input_last_name(last_name)
end

When('I input the some e-mail') do
  new_email = Time.now.strftime('%H%M%S%L') + '@email.com'
  @pages.create_user_page.input_email(new_email)
  print new_email+"\n"
end

When('I input the Address1 {string}') do |address1|
  @pages.create_user_page.input_addr1(address1)
end

When('I input the city {string}') do |city|
  @pages.create_user_page.input_city(city)
end

When('I input the postcode {string}') do |postcode|
  @pages.create_user_page.input_postcode(postcode)
end

When('I select the country {string}') do |country|
  @pages.create_user_page.select_country(country)
end

Then(/^I select the region "(.*)"$/) do |region|
  @pages.create_user_page.select_region(region)
end

When('I input the login name') do
  new_login = 'user' + Time.now.strftime('%M%S%L')
  @pages.create_user_page.input_login(new_login)
  print "Login name: "+new_login+"\n"
end

When('I input the password {string}') do |password|
  @pages.create_user_page.input_password(password)
end

When('I confirm the password {string}') do |password|
  @pages.create_user_page.input_password_confirm(password)
end

When('I deselect subscribe newsletter {string}') do |deselect|
  @pages.create_user_page.deselect_subscribe(deselect)
end

When('I select agree checkbox') do
  @pages.create_user_page.select_privacy_agreement
 
end

When('I press button continue') do
  @pages.create_user_page.click_submit_button
  sleep 2
end

Then(/^I check some text$/) do
  expect(@pages.create_user_page.confirm_registration).to eq('YOUR ACCOUNT HAS BEEN CREATED!')
 end
 