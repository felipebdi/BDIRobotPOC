*** Settings ***
Documentation   Elements on BDI article page
Library    SeleniumLibrary

*** Variables ***
${ARTICLE_PAGE_TITLE}   xpath=//h1[@class='hero-page__title heading-1']

*** Keywords ***

get text from first article and compare with result page title
    wait until element is visible    ${ARTICLE_PAGE_TITLE}
    ${ARTICLE_PAGE_ARTICLE_TITLE}=    GET TEXT  ${ARTICLE_PAGE_TITLE}
    set global variable    ${ARTICLE_PAGE_ARTICLE_TITLE}