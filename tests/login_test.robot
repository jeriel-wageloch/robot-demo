*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Login With Valid Credentials
    Open Browser    ${URL}    Chrome
    Input Text      xpath=//*[@id="txtemailaddr"]    ${USER}
    Input Text      xpath=//*[@id="txtpassword"]      ${PASS}
    Click Button    xpath=//*[@id="btnlogin"]
    Sleep    5
    Close Browser