<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

use Drupal\DrupalExtension\Context\DrupalContext;

/**
 * Features context.
 */
class FeatureContext extends DrupalContext
{
    /**
     * @Given /^I am on the home page$/
     */
    public function iAmOnTheHomePage ()
    {
        $this->visit("/");
    }
}
