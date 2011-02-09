Feature: Visiting products

  Scenario: Visiting products page
    Given the following products exist:
      | name                |
      | apache baseball cap |
      | zomg shirt          |
    Given the following taxonomies exist:
      | name        |
      | Brand       |
      | Categories  |
    And I go to the home page
    Then show me the page

    When I fill in "keywords" with "shirt"
    When I press "Search"
    Then I should see "zomg shirt"
