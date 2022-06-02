*** Settings ***
Documentation   BDI website test suite
Resource    ../Resources/bdiWebApp.resource
Resource    ../Resources/common.resource
Test Setup  Begin web test locally
Test Teardown   End web test

*** Variables ***
${BROWSER}              Chrome     #android or iphone
${URL}                  https://www.blackdoginstitute.org.au/
${OS}                   Windows
${OS_VERSION}           10
${SEARCH_TERM}          Mental Health
${BROWSERSTACK_USER}    username
${BROWSERSTACK_KEY}     password
${REMORE_URL}           http://${BROWSERSTACK_USER}:${BROWSERSTACK_KEY}@hub.browserstack.com:80/wd/hub
${WINDOW_WIDTH}         360
${WINDOW_HEIGHT}        640

*** Test Cases ***
As a user, I want to search on BDI website, so that I can read relevant article
    [Documentation]    Search key terms on BDI website
    [Tags]    v1.0.1    v1.0.2

    Given user navigates to BDI website
    When user searches for term
    Then list of relevant terms should be displayed
    And user should be able to open relevant article

As a user, I want to be able to make monthly donations to BDI, so that I can help create a mentally healthy world
    [Documentation]    Using the donate functionality
    [Tags]    v1.0.3

    Given user navigates to BDI website
    When user clicks on donate link
    Then user should be redirected to the donate page
    And user should be able to select donation frequency
    and user should be able to select donation amount

As a user I want to click on "About Black Dog" button and should land on the "About BDI" page
    [Documentation]    Go to About BDI page from Donate page

    Given user is not on the homepage
    When user clicks on "About Black Dog" button
    Then user is redirected to "About BDI" page
