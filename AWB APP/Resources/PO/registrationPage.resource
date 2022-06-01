*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REGISTER_BUTTON}  Register for BrighterSide trial
${HELP_BUTTON}      I NEED HELP NOW

*** Keywords ***
verify register for trial button is available
    wait until element is visible    accessibility_id=${REGISTER_BUTTON}

Click on "I Need Help Now" button
    tap    accessibility_id=${HELP_BUTTON}