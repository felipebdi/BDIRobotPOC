*** Settings ***
Documentation
Resource        ../Resources/common.resource
Resource        ../Resources/AWBAPP.resource
Test Setup      Start mobile app test
Test Teardown   End mobile app test

*** Variables ***
${BROWSERSTACK_USER}    username
${BROWSERSTACK_KEY}     password
${REMOTE_URL}           http://${BROWSERSTACK_USER}:${BROWSERSTACK_KEY}@hub.browserstack.com:80/wd/hub
${APP_URL}              bs://f46ed5fa69e002794d34b45d508bb25a1e0f5aa1     #bs://738ac045aa23b4fdd85f92a185cc025969546b1a
${PLATFORM_NAME}        ios
${OS_VERSION}           13.3
${DEVICE}               iphone 11 Pro

*** Test Cases ***
Verify unregistered user can access Help section

    Given application is opened
    When user clicks on "I Need Help Now" button
    Then user is redirected to "Be Save" screen
    And emergency numbers are displayed