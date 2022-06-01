*** Settings ***
Documentation    Here are the calls to Brighterside
Library    RequestsLibrary


*** Variables ***

*** Keywords ***
Check valid login
    ${body}     create dictionary  code=933504
    ${resp}     post on session    ${ALIAS}     ${API_SERVER}/login     json=${body}
    ${json}     set variable       ${resp.json()}
    should be equal as strings     ${resp.status_code}   200
    should be equal as strings     ${json['description']}    Success

Check invalid login
    ${body}     create dictionary  code=000000
    ${resp}     post on session    ${ALIAS}     ${API_SERVER}/login     json=${body}
    ${json}     set variable       ${resp.json()}
    should be equal as strings     ${resp.status_code}   200
    should be equal as strings     ${json['description']}    User does not belong to this study

POST "OPENED" Settings
    ${headers}  create dictionary   Content-Type=application/json    Authorization=Bearer ${TOKEN}
    ${body}     create dictionary   userEventId=1   eventName=opened    parameterName=page  parameterValueId=null   value=settings  timestamp=2021-04-13T02:10:26Z
    ${resp}     post on session     ${ALIAS}   url=${API_SERVER}/userEvents    headers=${headers}     json=${body}
    ${json}     set variable        ${resp.json()}
    should be equal as strings      ${resp.status_code}   200
    should be equal as strings      ${json['description']}    Success

POST "STARTED" Activity
    ${headers}  create dictionary   Content-Type=application/json    Authorization=Bearer ${TOKEN}
    ${body}     create dictionary   userEventId=2   eventName=started    parameterName=activity  parameterValueId=1   value=  timestamp=2021-04-13T02:10:26Z
    ${resp}     post on session     ${ALIAS}   url=${API_SERVER}/userEvents   headers=${headers}     json=${body}
    ${json}     set variable        ${resp.json()}
    should be equal as strings      ${resp.status_code}   200
    should be equal as strings      ${json['description']}    Success
