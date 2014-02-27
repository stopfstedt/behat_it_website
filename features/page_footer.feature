Feature: Homepage
  In order to ???
  As a site visitor
  I want to ???

  Background:
    Given I am on the homepage

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
