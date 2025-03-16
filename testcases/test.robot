*** Settings ***
Library    Browser

*** Test Cases ***
Test Open Page
    New Browser    headless=False
    New Page    https://www.google.com
    Get Title    ==    Google
    Close Browser
