*** Settings ***
Resource    ../Resources/PO/registrationPage.resource
Resource    ../Resources/PO/beSafePage.resource

*** Keywords ***
application is opened
    verify register for trial button is available

user clicks on "I Need Help Now" button
    Click on "I Need Help Now" button

user is redirected to "Be Save" screen
    verify page title

emergency numbers are displayed
    verify emergency numbers