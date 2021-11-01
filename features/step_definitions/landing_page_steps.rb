Given(/^I am on the landing page$/) do
  @pages.landing_page.visit
  expect(@pages.landing_page.contains_section?('TESTIMONIALS')).to eq(true)
end
