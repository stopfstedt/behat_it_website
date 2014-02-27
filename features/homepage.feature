Feature: Homepage
  In order to quickly gain an overview on the site's offerings
  As a site visitor
  I want to see primary services, tools and recent news listed on the homepage

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

  # this is broken, see INC1309577
  Scenario: Follow "Search UCSF" link in the UCSF banner navigation
    And I follow "Search UCSF" in the "UCSF Nav" region
    Then I should be on "http://www.googlesyndicatedsearch.com/"

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

  Scenario: See the page footer
    Then I should see "GET IT HELP" in the "Footer" region
    And I should see the link "Site Login" in the "Footer" region
    And I should see the link "Site Index" in the "Footer" region
    And I should see the link "Suggest an IT Improvement" in the "Footer" region
    And I should see "UC Regents" in the "Footer" region

  Scenario: Follow "online" link in page footer to Service Now
    And I follow "online" in the "Footer" region
    Then I should be on "https://ucsf.service-now.com/ess/"

  Scenario: Follow "Site Login" link in page footer to MyAccess
    And I follow "Site Login" in the "Footer" region
    Then I should be on "https://dp.ucsf.edu/idp/Authn/UserPassword"

  Scenario: Follow "Site Index" link in page footer to Service Now
    And I follow "Site Index" in the "Footer" region
    Then I should be on "/a-z_list"

  Scenario: Follow "Suggest an IT Improvement" link in page footer to Qualtrics
    And I follow "Suggest an IT Improvement" in the "Footer" region
    Then I should be on "https://ucsf.us.qualtrics.com/SE/?SID=SV_6Ex9JgzTTzufnSY"

  Scenario: Directory Search Form
    And I search the campus directory for "Kilmister"
    Then I should be on "https://directory.ucsf.edu/?last_name=Kilmister&op.x=0&op.y=0"

  Scenario: Site Search Form
    And I search the site for "Drupal"
    Then I should be on "/search/apachesolr_search/Drupal"
    And should see "Search"
    And I should see "Drupal"
