*** Settings ***
Documentation    This is the common resources with setup and teardown
Library    SeleniumLibrary

*** Variables ***
&{WEB_BSTACK_OPTIONS}       os=${OS}    osVersion=${OS_VERSION}
&{MOB_BSTACK_OPTIONS}       deviceName=${OS}

*** Keywords ***
Begin desktop web test in BrowserStack
    &{DESIRED_CAPABILITIES}   create dictionary    bstack:options=${WEB_BSTACK_OPTIONS}     browserName=${BROWSER}
    open browser           browser=${BROWSER}       remote_url=${REMORE_URL}    desired_capabilities=${DESIRED_CAPABILITIES}
    maximize browser window

Begin mobile web test in BrowserStack
    &{DESIRED_CAPABILITIES}   create dictionary    bstack:options=${MOB_BSTACK_OPTIONS}     browserName=${BROWSER}
    open browser              remote_url=${REMORE_URL}    desired_capabilities=${DESIRED_CAPABILITIES}


Begin web test locally
    open browser    browser=${BROWSER}
    maximize browser window

End web test
    close all browsers