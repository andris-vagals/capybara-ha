# Contains user create page elements
class CreateUserPage

  include Capybara::DSL

  def initialize
    @section_titles = Element.new(:css, 'h4.heading4')
    @first_name_input = Element.new(:css, '#AccountFrm_firstname')
    @last_name_input = Element.new(:css, '#AccountFrm_lastname')
    @email_input = Element.new(:css, '#AccountFrm_email')
    @addr1_input = Element.new(:css, '#AccountFrm_address_1')
    @city_input = Element.new(:css, '#AccountFrm_city')
    @country_select = Element.new(:css, '#AccountFrm_country_id.form-control')
    @region_select = Element.new(:css, '#AccountFrm_zone_id.form-control')
    @postcode_input = Element.new(:css, '#AccountFrm_postcode')
    @login_input = Element.new(:css, '#AccountFrm_loginname')
    @pwd_input = Element.new(:css, '#AccountFrm_password')
    @pwd_confirm_input = Element.new(:css, '#AccountFrm_confirm')
    @subscribe_deselect = Element.new(:css, 'label input#AccountFrm_newsletter0')
    @privacy_agreement_checkbox = Element.new(:css, 'input#AccountFrm_agree')
    @submit_form = Element.new(:css, 'button.btn.btn-orange.pull-right')
    @submit_confirm = Element.new(:css, 'span.maintext')
  end

  def contains_section?(text)
    @section_titles.element_on_page? text: text, visible: true
  end

  def visit
    Capybara.visit('/index.php?rt=account/create')
  end

  def submit_account
    Capybara.visit('/index.php?rt=account/success')
  end

  def input_first_name(text)
    @first_name_input.send_keys(text)
  end

  def input_last_name(text)
    @last_name_input.send_keys(text)
  end

  def input_email(text)
    @email_input.send_keys(text)
  end

  def input_addr1(text)
    @addr1_input.send_keys(text)
  end

  def input_city(text)
    @city_input.send_keys(text)
  end

  def input_postcode(text)
    @postcode_input.send_keys(text)
  end

  def select_country(text)
    @country_select.click
    @country_select.send_keys(text)
  end

  def select_region(text)
    @region_select.click
    @region_select.send_keys(text)
  end

  def input_login(text)
    @login_input.send_keys(text)
  end

  def input_password(text)
    @pwd_input.send_keys(text)
  end

  def input_password_confirm(text)
    @pwd_confirm_input.send_keys(text)
  end

  def deselect_subscribe(text)
    @subscribe_deselect.click
    deselect=@subscribe_deselect.value
    @subscribe_deselect.send_keys(deselect)
  end

  def select_privacy_agreement
    @privacy_agreement_checkbox.click
    text = @privacy_agreement_checkbox.checked?
    @privacy_agreement_checkbox.send_keys(text)
  end

  def click_submit_button
    @submit_form.click
  end

  def confirm_registration
    @submit_confirm.text
  end
end