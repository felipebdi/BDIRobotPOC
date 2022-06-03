*** Settings ***
Documentation    This is the common resources with setup and teardown
Library    SeleniumLibrary

*** Variables ***
&{WEB_BSTACK_OPTIONS}       os=${DESK_OS}    osVersion=${DESK_OS_VERSION}
&{MOB_BSTACK_OPTIONS}       deviceName=${DEVICE}

*** Keywords ***
Begin desktop web test in BrowserStack
    &{DESIRED_CAPABILITIES}   create dictionary    bstack:options=${WEB_BSTACK_OPTIONS}     browserName=${DESK_BROWSER}
    open browser           browser=${DESK_BROWSER}        remote_url=${REMORE_URL}    desired_capabilities=${DESIRED_CAPABILITIES}
    maximize browser window

Begin mobile web test in BrowserStack
    &{DESIRED_CAPABILITIES}   create dictionary    bstack:options=${MOB_BSTACK_OPTIONS}     browserName=${MOB_BROWSER}
    open browser              remote_url=${REMORE_URL}    desired_capabilities=${DESIRED_CAPABILITIES}


Begin web test locally
    open browser    browser=${DESK_BROWSER}
    #maximize browser window
    set window size    340      600


End web test
    close all browsers