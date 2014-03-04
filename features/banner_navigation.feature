Feature: Banner Navigation
  In order to quickly access the main UCSF website and other affiliated sites of general interest
  As a site visitor
  I want to see the branded UCSF banner navigation on all pages

  Background:
    Given I am on the homepage

  Scenario: See the UCSF banner navigation
    Then I should see "UCSF" in the "UCSF Nav" region
    And I should see the link "University of California, San Francisco" in the "UCSF Nav" region
    And I should see the link "About UCSF" in the "UCSF Nav" region
    And I should see the link "Search UCSF" in the "UCSF Nav" region
    And I should see the link "UCSF Medical Center" in the "UCSF Nav" region
    And I should see the link "UCSF Directory" in the "UCSF Nav" region
    But I should not see the "UCSF Mobile Nav" region

  Scenario: Follow "UCSF" link in the UCSF banner navigation
    And I follow "UCSF" in the "UCSF Nav" region
    Then I should be on "http://www.ucsf.edu/"

  Scenario: Follow "University of California, San Francisco" link in the UCSF banner navigation
    And I follow "University of California, San Francisco" in the "UCSF Nav" region
    Then I should be on "http://www.ucsf.edu/"

  Scenario: Follow "About UCSF" link in the UCSF banner navigation
    And I follow "About UCSF" in the "UCSF Nav" region
    Then I should be on "http://www.ucsf.edu/about"

  Scenario: Follow "Search UCSF" link in the UCSF banner navigation
    And I follow "Search UCSF" in the "UCSF Nav" region
    Then I should be on "http://www.ucsf.edu/search"

  Scenario: Follow "UCSF Medical Center" link in the UCSF banner navigation
    And I follow "UCSF Medical Center" in the "UCSF Nav" region
    Then I should be on "http://www.ucsfhealth.org/"

  Scenario: Follow "UCSF Directory" link in the UCSF banner navigation
    And I follow "UCSF Directory" in the "UCSF Nav" region
    Then I should be on "http://directory.ucsf.edu/"

  Scenario: See the UCSF mobile banner navigation
    And I resize the window to "200" by "600"
    Then I should see the link "UCSF" in the "UCSF Mobile Nav" region
    And I should see the link "University of California, San Francisco" in the "UCSF Mobile Nav" region
    But I should not see the "UCSF Nav" region

  Scenario: Follow "UCSF" link in the UCSF banner navigation
    And I resize the window to "200" by "600"
    And I follow "UCSF" in the "UCSF Mobile Nav" region
    Then I should be on "http://www.ucsf.edu/"

  Scenario: Follow "University of California, San Francisco" link in the UCSF banner navigation
    And I follow "University of California, San Francisco" in the "UCSF Mobile Nav" region
    Then I should be on "http://www.ucsf.edu/"

  Scenario: Banner navigation switcheroo on smaller viewports
    And I resize the window to "200" by "600"
    Then I should see the "UCSF Mobile Nav" region
    But I should not see the "UCSF Nav" region

  Scenario: Banner navigation switcheroo on larger viewports
    And I resize the window to "1000" by "600"
    Then I should see the "UCSF Nav" region
    But I should not see the "UCSF Mobile Nav" region
