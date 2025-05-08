*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Login And Navigate To Reports
    Open Browser    ${URL}    Firefox
    Input Text      xpath=//*[@id="txtemailaddr"]    ${USER}
    Input Text      xpath=//*[@id="txtpassword"]     ${PASS}
    Click Button    xpath=//*[@id="btnlogin"]
    Sleep    3
    Click Element   xpath=//*[@id="aReports"]
    Page Should Contain Element    id=MainContent_ctl01_exptitle
    Sleep    2
    Close Browser


