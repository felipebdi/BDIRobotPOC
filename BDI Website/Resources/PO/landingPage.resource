*** Settings ***
Documentation   Elements on BDI landing page
Library    SeleniumLibrary

*** Variables ***
${LANDING_PAGE_TITLE}     xpath=//div[@class='hero-home__title']/h2

*** Keywords ***
load page
    go to    ${URL}

verify landing page loaded
    wait until element is visible    ${LANDING_PAGE_TITLE}

