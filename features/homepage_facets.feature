Feature: Homepage Facets
I want the home page to include the facets I chose

Scenario: home page facets
  When I am on the home page
  Then I should see "Fedora Model"
  And I should see "info:fedora/afmodel:ModsAsset"
  Then I should see "Topic"
  Then I should see "Journal"
  And I should see "The Journal of Mock Object"
  And I should see "Pediatric Nursing"
  Then I should see "Conference"
  And I should see "some conference Host"