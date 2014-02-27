Feature: Homepage
  In order to quickly gain an overview on the site's offerings
  As a site visitor
  I want to see primary services, tools and recent news listed on the homepage

  Background:
    Given I am on the homepage

  Scenario: Main Top
    Then I should see 3 image-links in the "Main Top Home Page" region

  Scenario: Our Services
    Then I should see the heading "Our Services" in the "Main Left Home Page" region

  Scenario: News
    Then I should see the heading "News" in the "Main Middle Home Page" region

  Scenario: Tools
    Then I should see the heading "Tools" in the "Main Right Home Page" region

  Scenario: Status
    Then I should see the heading "Status" in the "Main Right Home Page" region


