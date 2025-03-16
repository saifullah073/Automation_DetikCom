*** Settings ***
Library    Browser
Resource   ../../resources/keywords/general_keywords.robot
Resource   ../../resources/locators/idn_home.robot

Test Setup      Open new browser
Test Teardown   Close Browser

*** Test Cases ***
Verify UI Logo IDN
    [Documentation]  Scenario: Verify UI of Logo IDN is displayed
    [Tags]  @ui_logo_idn
    Then Get Element  ${idn_main_logo}