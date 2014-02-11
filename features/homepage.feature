Feature: Homepage
  In order to quickly gain an overview on the site's offerings
  As a site visitor
  I want to see primary services, tools and recent news listed on the homepage

  Background:
    Given I am on the homepage

  Scenario: See the Primary Navigation
    Then I should see "services" in the "Main Nav" region
    And I should see "projects" in the "Main Nav" region
    And I should see "how do I" in the "Main Nav" region
    And I should see "about" in the "Main Nav" region

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
    And I should see "Site Login" in the "Footer" region
    And I should see "Site Index" in the "Footer" region
    And I should see "Suggest an IT Improvement" in the "Footer" region
    And I should see "UC Regents" in the "Footer" region

  Scenario: Follow "online" link in page footer to Service Now
    And I follow "online" in the "Footer" region
    Then I should be on "https://ucsf.service-now.com/ess/"

  Scenario: Follow "Site Login" link in page footer to MyAccess
    And I follow "Site Login" in the "Footer" region
    Then I should be on "https://dp.ucsf.edu/idp/Authn/UserPassword"

  Scenario: Follow "Site Index" link in page footer to Service Now
    And I follow "Site Index" in the "Footer" region
    Then I should be on "a-z_list"

  Scenario: Follow "Suggest an IT Improvement" link in page footer to Qualtrics
    And I follow "Suggest an IT Improvement" in the "Footer" region
    Then I should be on "https://ucsf.us.qualtrics.com/SE/?SID=SV_6Ex9JgzTTzufnSY"

