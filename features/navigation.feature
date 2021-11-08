Feature: As a anonymous user I want to register in store
  Background:
    Given I am on the create user page

Scenario: Navigate to User create page
    When I input the first name "Michael"
    And I input the last name "Jackson"
    And I input the some e-mail 
    And I input the Address1 "Grain st. 55-3"
    And I input the city "Tofta"
    And I input the postcode "622 65"
    And I select the country "Sweden"
    And I select the region "Halland"
    And I input the login name
    And I input the password "Qwerty00"
    And I confirm the password "Qwerty00"
    And I deselect subscribe newsletter "0"
    And I select agree checkbox
    And I press button continue
    Then I check some text