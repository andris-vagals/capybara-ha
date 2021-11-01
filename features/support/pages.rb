# Initializes all page objects
class Pages

  attr_accessor :navigation_bar, :landing_page, :test_automation_page,
                :contact_us_page, :mob_app_testing_page

  def initialize
    @navigation_bar = NavigationBar.new
    @landing_page = LandingPage.new
    @test_automation_page = TestAutomationPage.new
    @contact_us_page = ContactUsPage.new
    @mob_app_testing_page = MobAppTestingPage.new
  end

end