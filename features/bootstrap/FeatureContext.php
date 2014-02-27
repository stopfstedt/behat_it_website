<?php
use Behat\Behat\Exception\PendingException;
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
        // this is currently the only way to properly submit the form.
        // losing focus on the input field will reset it's entered value.
        // see INC1309585 for details on this problem.
        // @todo revisit this after INC1309585 has been fixed [ST 2014/02/27]
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
        // this is currently the only way to properly submit the form.
        // losing focus on the input field will reset it's entered value.
        // see INC1309596 for details on this problem.
        // @todo revisit this after INC1309596 has been fixed [ST 2014/02/27]
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

    /**
     * @Then /^I should see (\d+) image-links in the "([^"]*)" region$/
     */
    public function iShouldSeeImageLinksInTheRegion($num, $region) {
        $regionObj = $this->getRegion($region);
        if (! $regionObj) {
            throw new \Exception(sprintf('Region "%s" on the page %s does not exist.', $region, $this->getSession()->getCurrentUrl()));
        }
        $regionId = $regionObj->getAttribute('id');
        $this->assertNumElements((int) $num, "#{$regionId} a > img");
    }

    /**
     * @Given /^I should see a list with (\d+) items in the "([^"]*)" region$/
     */
    public function iShouldSeeAListWithItemsInTheRegion($num, $region) {
        $regionObj = $this->getRegion($region);
        if (! $regionObj) {
            throw new \Exception(sprintf('Region "%s" on the page %s does not exist.', $region, $this->getSession()->getCurrentUrl()));
        }
        $regionId = $regionObj->getAttribute('id');
        $this->assertNumElements((int) $num, "#{$regionId} li");
    }

    /**
     * @Given /^I should see a View with (\d+) rows in the "([^"]*)" region$/
     */
    public function iShouldSeeAViewWithRowsInTheRegion($num, $region) {
        $regionObj = $this->getRegion($region);
        if (! $regionObj) {
            throw new \Exception(sprintf('Region "%s" on the page %s does not exist.', $region, $this->getSession()->getCurrentUrl()));
        }
        $regionId = $regionObj->getAttribute('id');
        $this->assertNumElements((int) $num, "#{$regionId} .view-content .views-row");
    }

    /**
     * @Given /^I should see the IT Help block in the "([^"]*)" region$/
     */
    public function iShouldSeeTheItHelpBlockInTheRegion($region) {
        throw new PendingException();
    }
}
