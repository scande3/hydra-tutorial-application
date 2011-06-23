Feature: Button to Add Articles
  In order to create Journal Articles
  As a person with submit permissions
  I want to see a button for adding articles
  
  Scenario: button to add articles on home page
    Given I am logged in as "archivist1"
    When I am on the home page
    Then I should not see "Add a MODS Asset"
    And I should see "Add an Article"
    # See https://jira.duraspace.org/browse/HYDRA-528
    # And "Add an Article" should link to the page for creating a "journal_article"
