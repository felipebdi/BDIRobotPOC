*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PAGE_TITLE}                  BE SAFE
${EMERGENCY_NUMBER}            Emergency Australia\n000
${SUICIDE_CALLBACK_NUMBER}     Suicide Call Back Service\n1300 659 467
${LIFELINE_NUMBER}             Lifeline\n13 11 14

*** Keywords ***
verify page title
    element attribute should match    accessibility_id=${PAGE_TITLE}  content-desc   BE SAFE

verify emergency numbers

    element should be visible    accessibility_id=${EMERGENCY_NUMBER}
    element should be visible    accessibility_id=${SUICIDE_CALLBACK_NUMBER}
    element should be visible    accessibility_id=${LIFELINE_NUMBER}
