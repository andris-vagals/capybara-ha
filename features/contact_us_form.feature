@contact_us
Feature: As a visitor I want to be able to contact TDL using the contact us form
  Background:
    Given I am on the contact us page

  @wip
  Scenario: Contact us form positive test case
    When I fill the first name field with "Johnny"
    And I fill the last name field with "Smith"
    And I select "to pr department" in the topic dropdown
    And I select "privacy policy" checkbox
#When I fill the first name field with "Anna"