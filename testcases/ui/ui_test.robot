*** Settings ***
Library    Browser
Resource   ../../resources/keywords/general_keywords.robot

Test Setup      Open new browser
Test Teardown   Close Browser

*** Test Cases ***
Test Open Page
    Open new browser
    Get Title    ==    Google
    Close Browser
