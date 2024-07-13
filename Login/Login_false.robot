*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://127.0.0.1:8000/contributor/dashboard
${BROWSER}     edge
${USERNAME}    johannasiagian
${PASSWORD}     joanaa
${LOGIN_BUTTON}    //html/body/section/div/div/div/div/div/div[2]/div/form/div[4]
${SCREENSHOT_DIR}    ./screenshots

*** Test Cases ***
Login Test
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    5
    Click Element    /html/body/div/div[1]/section[2]/div/div[2]/div/div[2]/div/a
    Input Password    //*[@id="form2Example27"]    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Sleep 10
    Capture Page Screenshot    ${SCREENSHOT_DIR}/tambah_button_clicked.png
    Close Browser
