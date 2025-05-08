*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Login With Valid Credentials
    Open Browser    ${URL}    Chrome
    Wait Until Element Is Visible  xpath=//*[@id="txtemailaddr"]  timeout=10s
    Input Text      xpath=//*[@id="txtemailaddr"]    ${USER}
    Wait Until Element Is Visible  xpath=//*[@id="txtpassword"]  timeout=10s
    Input Text      xpath=//*[@id="txtpassword"]      ${PASS}
    Wait Until Element Is Visible  xpath=//*[@id="btnlogin"]  timeout=10s
    Click Button    xpath=//*[@id="btnlogin"]
    
    # Wait for some expected page to appear (e.g., a successful login message)
    Wait Until Element Is Visible  xpath=//*[@id="some_element_after_login"]  timeout=10s

    Close Browser