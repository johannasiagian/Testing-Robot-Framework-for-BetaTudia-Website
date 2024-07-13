*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://127.0.0.1:8000/contributor/login
${BROWSER}     edge
${USERNAME}    johannasiagian
${PASSWORD}    johannasiagian
${LOGIN_BUTTON}    //html/body/section/div/div/div/div/div/div[2]/div/form/div[4]

*** Test Cases ***
Login Test
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    5
    Input Text    //*[@id="form2Example17"]    ${USERNAME}
    Input Password    //*[@id="form2Example27"]    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
