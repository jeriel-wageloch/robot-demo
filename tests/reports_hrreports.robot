*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Login And Navigate To Reports
    Open Browser    ${URL}    Chrome
    Input Text      xpath=//*[@id="txtemailaddr"]    ${USER}
    Input Text      xpath=//*[@id="txtpassword"]     ${PASS}
    Click Button    xpath=//*[@id="btnlogin"]
    Sleep    3
    Click Element   xpath=//*[@id="aReports"]    # Adjust if text differs
    Page Should Contain Element    id=MainContent_ctl01_exptitle               # You can replace with a more specific check
    Sleep    2
    Close Browser
