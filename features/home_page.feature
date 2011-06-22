Feature: Homepage
  I want the home page to reflect localizations properly
  
  Scenario: home page text
    When I am on the home page
    Then I should not see "override"
    And I should see "My Local Hydra App"
    And I should see "Isn't it great?"
    And I should see "Search"