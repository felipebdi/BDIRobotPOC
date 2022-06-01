*** Settings ***
Documentation   Elements on BDI search results page
Library    SeleniumLibrary

*** Variables ***
${SEARCH_PAGE_LIST}             xpath=//div[@class='page-content__search-results ']
${SEARCH_PAGE_FIRST_ARTICLE}    xpath=//*[@id="root"]/div/div[4]/div[2]/div/div/div/div/div/a[1]


*** Keywords ***
verify search results page loaded
    wait until element is visible    ${SEARCH_PAGE_LIST}

get text from first result
    ${SEARCH_PAGE_FIRST_RESULT_TITLE}=    GET TEXT    ${SEARCH_PAGE_FIRST_ARTICLE}
    set global variable    ${SEARCH_PAGE_FIRST_RESULT_TITLE}

click on first article
    click link    ${SEARCH_PAGE_FIRST_ARTICLE}
