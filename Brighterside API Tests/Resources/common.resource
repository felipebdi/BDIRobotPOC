*** Settings ***
Documentation    Test setup and teardown
Library    RequestsLibrary

*** Variables ***
${ALIAS}       API Tests
${API_SERVER}           https://uat-research.blackdoghealth.org.au/Services/LWSTAPI.svc

*** Keywords ***
Create valid API session
    ${headers}       create dictionary    content-type=application/json
    Create Session     ${ALIAS}    ${API_SERVER}
    ${body}     create dictionary    code=933504
    ${resp}     POST On Session  ${ALIAS}     ${API_SERVER}/login     json=${body}      headers=${headers}
    ${json}     set variable    ${resp.json()}
    should be equal as strings    ${resp.status_code}   200
    should be equal as strings    ${json['description']}    Success
    ${TOKEN}  set variable    ${json['token']}
    set global variable    ${TOKEN}

Teardown open session
    Delete All Sessions