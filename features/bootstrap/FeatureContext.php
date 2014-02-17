<?php

use Drupal\DrupalExtension\Context\DrupalContext;

/**
 * Features context.
 */
class FeatureContext extends DrupalContext
{
    /**
     * @Given /^I am on the home page$/
     */
    public function iAmOnTheHomePage()
    {
        $this->visit("/");
    }

    /**
     * @Given /^I search the site for "([^"]*)"$/
     */
    public function iSearchTheSiteFor($searchTerm)
    {
        $field = $this->getSession()->getPage()->find('css', '#search-theme-form .site-search');
        $field->focus();
        $field->setValue($searchTerm);
        $field->keyPress(13);
    }

    /**
     * @Given /^I search the campus directory for "([^"]*)"$/
     */
    public function iSearchTheCampusDirectoryFor($searchTerm)
    {
        $field = $this->getSession()->getPage()->find('css', '#tools-directory-search .dir-search');
        $field->focus();
        $field->setValue($searchTerm);
        $field->keyPress(13);
    }
}
