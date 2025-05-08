*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Resource   ../resources/variables.robot

*** Test Cases ***
Login And Navigate To Reports
    ${timestamp}=    Get Current Date    result_format=%Y%m%d%H%M%S
    ${random_string}=    Generate Random String    12    # Generates a random string of length 12 for more uniqueness
    ${user_data_dir}=    Set Variable    ${EXECDIR}/chrome_user_data_${timestamp}_${random_string}
    Open Browser    ${URL}    Chrome    --user-data-dir=${user_data_dir}
    Input Text      xpath=//*[@id="txtemailaddr"]    ${USER}
    Input Text      xpath=//*[@id="txtpassword"]     ${PASS}
    Click Button    xpath=//*[@id="btnlogin"]
    Sleep    3
    Click Element   xpath=//*[@id="aReports"]    # Adjust if text differs
    Page Should Contain Element    id=MainContent_ctl01_exptitle    # You can replace with a more specific check
    Sleep    2
    Close Browser
