*** Settings ***
Documentation
Resource    ../Resources/PO/landingPage.resource
Resource    ../Resources/PO/topNav.resource
Resource    ../Resources/PO/searchResultsPage.resource
Resource    ../Resources/PO/articlePage.resource
Resource    ../Resources/PO/donatePage.resource
Resource    ../Resources/PO/aboutBDIPage.resource

*** Keywords ***
user navigates to BDI website
    load page
    verify landing page loaded

#serch keywords
user searches for term
    type on search bar
    press search button

list of relevant terms should be displayed
    verify search results page loaded

user should be able to open relevant article
    get text from first result
    click on first article
    get text from first article and compare with result page title
        should contain    ${SEARCH_PAGE_FIRST_RESULT_TITLE}  ${ARTICLE_PAGE_ARTICLE_TITLE}

#donate keywords
user clicks on donate link
    click on donate link

user should be redirected to the donate page
    verify user is on donate page

user should be able to select donation frequency
    select montly donation frequency

user should be able to select donation amount
    select '$50' donation amount

user is not on the homepage
    load donate page
    user is on donate page

user clicks on "About Black Dog" button
    click logo

user is redirected to "About BDI" page
    verify user is on "About BDI" page