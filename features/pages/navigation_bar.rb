# Contains all navigation section elements
class NavigationBar

  include Capybara::DSL

  def initialize
    @solutions_section = Element.new(:xpath, '//div[text() = "Solutions"]')
    @test_automation_btn = Element.new(:css, '.menu-item a[href*="test-automation"]')
    @contact_us_btn = Element.new(:css, '.menu-bar a.contact-us-btn')
    @platforms_btn = Element.new(:xpath, '//div[text()="Platforms"]')
    @mob_app_test_btn = Element.new(:css, '.menu-item a[href*="mobile-application-testing"]')
  end

  def go_to_test_automation_page
    @solutions_section.hover
    @test_automation_btn.click
  end

  def go_to_contact_us_page
    @contact_us_btn.click
  end

  def go_to_mobile_testing
    @platforms_btn.hover
    @mob_app_test_btn.click
    sleep 4
  end
end
