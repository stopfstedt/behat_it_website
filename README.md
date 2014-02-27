# Behat Tests for the UCSF ITS website

The assumption is that you are doing this on a recent Fedora/RHEL (or derivative) Linux distro.

## Prerequisites

At the very least, you must have PHP 5.3.1+ and the Firefox browser installed in order to run these tests.

1. Install the Oracle JDK, see: http://www.if-not-true-then-false.com/2010/install-sun-oracle-java-jdk-jre-7-on-fedora-centos-red-hat-rhel/

2. Download the latest Selenium Server JAR file from http://docs.seleniumhq.org/download/

3. Install Composer. See http://getcomposer.org/doc/00-intro.md for instructions.

4. Install Behat and co. via Composer.

    ```
    cd <project>
    composer install
    ```

If you don't want to run these tests in a headless browser (PhantomJS), then you're done here. Otherwise, continue

5. Install Node.js and NPM

    ```
    sudo yum install nodejs npm
    ```

6.  Install PhantomJS as NPM module globally

    ```
    sudo npm install -g phantomjs
    ```


## Run Test in a web-browser

1. Run Selenium as standalone

    ```
    java -jar /path/to/your/selenium-server-standalone.jar
    ```
2. Run Behat tests with the "browser" profile

    ```
    cd <project>
    bin/behat -p browser
    ```
## Run Tests in a headless web-browser

1. Run Selenium as hub

    ```
    java -jar /path/to/your/selenium-server-standalone.jar -role hub
    ```

2. Run PhantomJS and register it with Selenium

    ```
    phantomjs --webdriver=8080 --webdriver-selenium-grid-hub=http://127.0.0.1:4444
    ```

3. Run Behat tests with the "headless" profile

    ```
    cd <project>
    bin/behat -p headless
    ```

## Troubleshooting

1. Why am I getting "PHP Fatal error:  Class 'DOMDocument' not found..."?

   Make sure your `php-xml` PHP extension is installed or up-to-date.

    ```
    sudo yum install php-xml
    ```

2. Why am I getting "PHP Fatal error:  Call to undefined function Behat\Behat\DependencyInjection\mb_internal_encoding()..."?

   Make sure you have installed the `php-mbstring` PHP extension.

    ```
    sudo yum install php-mbstring
    ```

3. Why I am not getting colored output from behat tests?

   Behat is probably not picking up the type of terminal you're using.  Forcing it to run in ANSI mode will probably fix it.

    ```
    bin/behat --ansi
    ```
