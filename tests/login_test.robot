*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Login With Valid Credentials
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Create WebDriver    Chrome    options=${options}
    Go To    ${URL}
    Wait Until Element Is Visible  xpath=//*[@id="txtemailaddr"]  timeout=10s
    Input Text      xpath=//*[@id="txtemailaddr"]    ${USER}
    Input Text      xpath=//*[@id="txtpassword"]     ${PASS}
    Click Button    xpath=//*[@id="btnlogin"]
    Sleep    5
    Close Browser
