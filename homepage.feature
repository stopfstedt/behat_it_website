Feature: Homepage
  As a site visitor
  I want to see services, tools and news offered on the site
  So that I can quickly see and access the content on the site

  Scenario: Primary Navigation
    Given I am on the homepage
    Then I should see a "services" link in the primary navigation
    And I should see a "projects" link in the primary navigation
    And I should see a "how do I" link in the primary navigation
    And I should see a "about" link in the primary navigation

  Scenario: Website Search
    Given I am on the homepage
    Then I should see the search form

  Scenario: Directory Search
    Given I am on the homepage
    Then I should see the directory search form
