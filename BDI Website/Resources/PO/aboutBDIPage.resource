*** Settings ***
Documentation    Elements on About BDI donate page
Library    SeleniumLibrary

*** Variables ***
${ABOUT_BDI_PAGE_TITLE}     xpath=//h1[@class='hero-detailed-page__title heading-1']

*** Keywords ***
verify user is on "About BDI" page
        ${handles}=        get window handles
        switch window   ${handles}[1]
        element should be visible    ${ABOUT_BDI_PAGE_TITLE}