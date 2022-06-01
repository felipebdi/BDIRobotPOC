*** Settings ***
Documentation   Elements on BDI Top Navigation Bar
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR}      xpath://input[@type='search']
${TOPNAV_SEARCH_BUTTON}   xpath://button[@class='global-search__button']
${TOPNAV_DONATE_BUTTON}   xpath://i[@class='icon icon-donate']

*** Keywords ***
type on search bar
    press keys  ${TOPNAV_SEARCH_BAR}   ${SEARCH_TERM}

press search button
    click button    ${TOPNAV_SEARCH_BUTTON}

click on donate link
    click element    ${TOPNAV_DONATE_BUTTON}