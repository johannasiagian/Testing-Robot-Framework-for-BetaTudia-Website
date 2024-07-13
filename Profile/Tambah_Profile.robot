*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${URL}                http://127.0.0.1:8000/contributor/login
${BROWSER}            edge
${USERNAME}           johannasiagian
${PASSWORD}           johannasiagian
${LOGIN_BUTTON}       //html/body/section/div/div/div/div/div/div[2]/div/form/div[4]
${PROFILE_BUTTON}     /html/body/div/nav/ul[2]/li/a
${MYPROFILE_BUTTON}   /html/body/div/nav/ul[2]/li/div/a
${PHONE}              0821542127389
${SCREENSHOT_DIR}     ./screenshots

*** Test Cases ***
ReadMore
    [Documentation]    Test case to click the "Tambah" button and add a phone number to the profile.
    Ensure Screenshot Directory Exists    ${SCREENSHOT_DIR}
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    5
    Input Text    //*[@id="form2Example17"]    ${USERNAME}
    Input Password    //*[@id="form2Example27"]    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${PROFILE_BUTTON}    20
    Click Element    ${PROFILE_BUTTON}
    Wait Until Element Is Visible    ${MYPROFILE_BUTTON}    20
    Click Element    ${MYPROFILE_BUTTON}
    Wait Until Element Is Visible    //*[@id="phone"]    20
    Input Text    //*[@id="phone"]    ${PHONE}
    Capture Page Screenshot    ${SCREENSHOT_DIR}/after_adding_phone.png
    Close Browser

*** Keywords ***
Ensure Screenshot Directory Exists
    [Arguments]    ${path}
    Create Directory    ${path}
    ...    exist_ok=True
