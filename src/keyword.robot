from selenium.webdriver.common.keys import Keys 

*** Variables ***
${HUB}                                  ${NONE}
${BASE_URL}                             http://0.0.0.0:8080

*** Keywords ***
Open Web
    Open Browser                        ${BASE_URL}     browser=googlechrome        remote_url=${HUB}
    Set Window Size                     1280            800

Login
    Input Text                          username        appsynth
    Input Text                          password        P@ssw0rd
    Click Button                        login
    Wait Until Page Contains            Dashboard

Submit Long Url
    Input Text                          longUrl         https://www.techtalkthai.com/first-step-on-using-kubernetes-and-container-with-free-online-interactive-tutorial/
    Click Button                        submit
    Wait Until Element Is Enabled       copy
    Click Button                        copy

Paste Url in New Tag
    Click Button                        test