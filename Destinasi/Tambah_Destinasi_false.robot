*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://127.0.0.1:8000/contributor/login
${BROWSER}     edge
${USERNAME}    johannasiagian
${PASSWORD}    johannasiagian
${LOGIN_BUTTON}    //html/body/section/div/div/div/div/div/div[2]/div/form/div[4]
${MOREINFO_BUTTON}  /html/body/div/div[1]/section[2]/div/div[2]/div/div[2]/div/a
${TAMBAH_BUTTON}    /html/body/div/div[1]/section[2]/div/div[1]/h3/a
${SCREENSHOT_DIR}    ./screenshots

*** Test Cases ***
Tambah Destinasi Test
    [Documentation]    Test case to click the "Tambah" button and take a screenshot.
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    5
    Input Text    //*[@id="form2Example17"]    ${USERNAME}
    Input Password    //*[@id="form2Example27"]    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Click Element    ${TAMBAH_BUTTON}
    Sleep    5
    Capture Page Screenshot    ${SCREENSHOT_DIR}/tambah_button_clicked.png
    Close Browser
