*** Settings ***
Documentation    Here are the API tests for Brighterside
Resource    ../Resources/BrightersideAPI.resource
Resource    ../Resources/common.resource

Test Setup      Create valid API session
Test Teardown    Teardown open session

*** Variables ***


*** Test Cases ***
Login to Brighterside
    Check valid login
    Check invalid login

Send user event
    POST "OPENED" Settings
    POST "STARTED" Activity