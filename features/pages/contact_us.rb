# Contains all contact us page elements
class ContactUsPage

  include Capybara::DSL

  def initialize
    @first_name_input = Element.new(:css, '#firstName')
    @last_name_input = Element.new(:css, '#lastName')
    @email_input = Element.new(:css, '#email')
    @dropdown = Element.new(:css, 'div.drop-down')
    @options =  Element.new(:css, 'a,.option')
    @privacy_checkbox = Element.new(:css, 'div.data-processing-checkbox')
    #@last_name_input = Element.new(:css, '#lastName')
  end

  def visit
    Capybara.visit('/contact-us')
  end

  def fill_first_name(text)
    @first_name_input.send_keys(text)
  end

  def fill_last_name(text)
    @last_name_input.send_keys(text)
  end

  def fill_email(text)
    @email_input.send_keys(text)
  end

  def select_topic(topic_name)
    @dropdown.click
    Capybara.find(@options.path, text: /#{topic_name}/i).click
    sleep 3
  end

  def select_privacy_checkbox
    @privacy_checkbox.click
  end

  def select_subscribe_checkbox
    @subscribe_checkbox.click
  end
end
