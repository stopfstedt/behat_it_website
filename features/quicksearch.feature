Feature: Homepage
  In order to quickly find content and people on the site
  As a site visitor
  I want to be able to search the site and the campus directory from all pages

  Background:
    Given I am on the homepage

  Scenario: Directory Search Form
    And I search the campus directory for "Kilmister"
    Then I should be on "https://directory.ucsf.edu/?last_name=Kilmister&op.x=0&op.y=0"

  Scenario: Quick Search Form
    And I search the site for "Drupal"
    Then I should be on "/search/apachesolr_search/Drupal"
    And should see "Search"
    And I should see "Drupal"



