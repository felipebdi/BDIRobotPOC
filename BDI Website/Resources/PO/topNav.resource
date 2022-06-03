*** Settings ***
Documentation   Elements on BDI Top Navigation Bar
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR}                 xpath://input[@type='search']
${TOPNAV_MOBILE_SEARCH_BAR}          xpath://div[@class='mobile-menu active']//input
${TOPNAV_MOBILE_DONATE_BUTTON}       xpath://a[@class='button button--ghost'][2]
${TOPNAV_SEARCH_BUTTON}              xpath://button[@class='global-search__button']
${TOPNAV_HAMBURGER_BUTTON}           xpath://button[@class='mobile-nav__hamburger hamburger-button hamburger-button--open']
${TOPNAV_DONATE_BUTTON}              xpath://i[@class='icon icon-donate']

*** Keywords ***
type on search bar
    ${status}=  run keyword and return status    element should be visible   ${TOPNAV_SEARCH_BAR}
        run keyword if    '${status}'=='True'   run keyword
                           ...  press keys   ${TOPNAV_SEARCH_BAR}    ${SEARCH_TERM}     RETURN
                      ...  ELSE    run keywords
                           ...     click button    ${TOPNAV_HAMBURGER_BUTTON}
                           ...     AND  wait until element is visible    ${TOPNAV_MOBILE_SEARCH_BAR}
                           ...     AND  press keys   ${TOPNAV_MOBILE_SEARCH_BAR}    ${SEARCH_TERM}    RETURN


click on donate link
    ${status}=  run keyword and return status    element should be visible   ${TOPNAV_DONATE_BUTTON}
        run keyword if    '${status}'=='True'   run keyword
                           ...  click element    ${TOPNAV_DONATE_BUTTON}
                      ...  ELSE    run keywords
                           ...     click button    ${TOPNAV_HAMBURGER_BUTTON}
                           ...     AND  wait until element is visible    ${TOPNAV_MOBILE_SEARCH_BAR}
                           ...     AND  click link    ${TOPNAV_MOBILE_DONATE_BUTTON}


