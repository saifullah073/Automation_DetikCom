*** Settings ***
Library    Browser
Resource   ../../configs/web_config.robot


*** Keywords ***
Open new browser
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Context    viewport={"width": 1920, "height": 1080}
    Set Browser Timeout    30000
    New Page    https://www.idntimes.com/    wait_until=load
   
# User login to admin page
    
