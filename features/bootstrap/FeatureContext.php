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
        $this->assertHomepage();
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

    /**
     * @Given /^I resize the window to "(\d+)" by "(\d+)"$/
     */
    public function iResizeWindow($width, $height)
    {
        $this->getSession()->resizeWindow((int) $width, (int) $height);
    }

    /**
     * @Then /^I should see the "([^"]*)" region$/
     */
    public function iShouldSeeTheRegion($region) {
        $regionObj = $this->getRegion($region);
        if (! $regionObj->isVisible()) {
            throw new \Exception(sprintf('Region "%s" on the page %s is not visible.', $region, $this->getSession()->getCurrentUrl()));
        }
    }

    /**
     * @Given /^I should not see the "([^"]*)" region$/
     */
    public function iShouldNotSeeTheRegion($region) {
        $regionObj = $this->getRegion($region);
        if ($regionObj->isVisible()) {
            throw new \Exception(sprintf('Region "%s" on the page %s is visible.', $region, $this->getSession()->getCurrentUrl()));
        }
    }
}
