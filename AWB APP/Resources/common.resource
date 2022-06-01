*** Settings ***
Library    Process
Library    AppiumLibrary


*** Keywords ***
Start mobile app test
    Open Application    ${REMOTE_URL}    app=${APP_URL}   platformName=${PLATFORM_NAME}   os_version=${OS_VERSION}    device=${DEVICE}


End mobile app test
    close all applications