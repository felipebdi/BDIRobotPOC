*** Settings ***
Documentation   Elements on BDI landing page
Library    SeleniumLibrary

*** Variables ***
${LANDING_BDI_LOGOS}     xpath=//*[@class='primary-nav__logo' or @class='mobile-nav__logo']

*** Keywords ***
load page
    go to    ${URL}

verify landing page loaded
    wait until element is visible   ${LANDING_BDI_LOGOS}