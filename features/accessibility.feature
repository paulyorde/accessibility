Feature: Test a specific page for accessibility
  As a developer
  I want to build applications that are accessible-compliant
  So that all end users have access to the application

  Scenario: User is on a specific web page
    Given I goto a web page
    Then  I should see page meet all accessibility criteria
