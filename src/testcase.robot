*** Settings ***
Library           Selenium2Library
Resource           ./keyword.robot

*** Variables ***
${timeout}  5s

*** Test Cases ***
User submit url success
    Open Web
    Login
    Submit Long Url
    Paste Url in New Tag

# Test Teardown    Close Browser
