@navigation
Feature: As a visitor I want to be able to navigate between different screens
  Background:
    Given I am on the landing page

  Scenario: Navigate to Test Automation
    When I navigate to Test automation page
    Then I should see Test automation page

  Scenario: Navigate to Contact Us page
    When I navigate to Contact Us page
    Then I should see Contact Us page


  Scenario: Navigate to Mobile application testing page
    When I navigate to Mobile application testing page
    Then I should see Mobile application testing page