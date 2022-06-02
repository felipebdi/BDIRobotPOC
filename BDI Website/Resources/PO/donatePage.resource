*** Settings ***
Documentation   Elements on BDI donate page
Library    SeleniumLibrary

*** Variables ***
${DONATEPAGE_MONTHLY_BUTTON}    xpath://button[@class='donation-form__amount-type-btn donation-form__amount-type-btn--inactive']
${DONATEPAGE_50_AMOUNT_BUTTON}  xpath://*[@id="donate"]/div[2]/div[2]/button[3]
${DONATEPAGE_TITLE}             xpath=//*[@id="donate"]/div[2]/h2
${ABOUT_BDI_BUTTON}             xpath=//a[@class='button button--link button--cta']

*** Keywords ***

verify user is on donate page
    ${handles}=        get window handles
    switch window   ${handles}[1]
    wait until element is visible    xpath://h2[@class='donation-form__title']
    title should be    Make a donation to Black Dog Institute

select montly donation frequency
    click button    ${DONATEPAGE_MONTHLY_BUTTON}

select '$50' donation amount
    click element   ${DONATEPAGE_50_AMOUNT_BUTTON}

load donate page
    go to    https://donate.blackdoginstitute.org.au/

user is on donate page
    wait until element is visible   ${DONATEPAGE_TITLE}

click logo
    click link    ${ABOUT_BDI_BUTTON}

