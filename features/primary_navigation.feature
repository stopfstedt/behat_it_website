Feature: Primary Navigation
  In order to quickly gain access to the site's main sections
  As a site visitor
  I want to be able to see and use the primary navigation menu on all pages

  Background:
    Given I am on the homepage

  Scenario: See the Primary Navigation
    Then I should see the link "services" in the "Main Nav" region
    And I should see the link "projects" in the "Main Nav" region
    And I should see the link "how do I" in the "Main Nav" region
    And I should see the link "about" in the "Main Nav" region

  Scenario: Follow "Services" link in main navigation
    And I follow "services" in the "Main Nav" region
    Then I should be on "/services"

  Scenario: Follow "Projects" link in main navigation
    And I follow "projects" in the "Main Nav" region
    Then I should be on "/projects"

  Scenario: Follow "How Do I" link in main navigation
    And I follow "how do I" in the "Main Nav" region
    Then I should be on "/how_do"

  Scenario: Follow "About" link in main navigation
    And I follow "about" in the "Main Nav" region
    Then I should be on "/pages/about-0"
