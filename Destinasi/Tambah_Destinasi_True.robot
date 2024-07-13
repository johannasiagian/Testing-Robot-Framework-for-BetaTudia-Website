*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${URL}                http://127.0.0.1:8000/contributor/login
${BROWSER}            edge
${USERNAME}           johannasiagian
${PASSWORD}           johannasiagian
${LOGIN_BUTTON}       //html/body/section/div/div/div/div/div/div[2]/div/form/div[4]
${MOREINFO_BUTTON}    /html/body/div/div[1]/section[2]/div/div[2]/div/div[2]/div/a
${TAMBAH_BUTTON}      /html/body/div/div[1]/section[2]/div/div[1]/h3/a
${NAMADESTINASI}      Pantai Bulbul
${TICKET_PRICE}       50000
${LOCATION}           Toba Samosir
${CATEGORY_ID}        1
${KABUPATEN_ID}       2
${DESCRIPTION}        Beautiful beach with clear water and white sand.


*** Test Cases ***
Tambah Destinasi Test
    [Documentation]    Test case to click the "Tambah" button and take a screenshot.
    Ensure Screenshot Directory Exists    ${SCREENSHOT_DIR}
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    5
    Input Text    //*[@id="form2Example17"]    ${USERNAME}
    Input Password    //*[@id="form2Example27"]    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${MOREINFO_BUTTON}    20
    Click Element    ${MOREINFO_BUTTON}
    Wait Until Element Is Visible    ${TAMBAH_BUTTON}    20
    Capture Page Screenshot    ${SCREENSHOT_DIR}/before_click_tambah.png
    Click Element    ${TAMBAH_BUTTON}
    Wait Until Element Is Visible    //*[@id="name"]    20
    Input Text    //*[@id="name"]    ${NAMADESTINASI}
    Input Text    //*[@id="ticket"]    ${TICKET_PRICE}
    Input Text    //*[@id="location"]    ${LOCATION}
    Select From List By Value    //*[@id="destination_category_id"]    ${CATEGORY_ID}
    Select From List By Value    //*[@id="kabupaten_id"]    ${KABUPATEN_ID}
    Input Text    /html/body/div[1]/div[1]/section[2]/div/div[2]/div/div/div/div/div/form/div[7]/div/div/div[2]/div    ${DESCRIPTION}
    Capture Page Screenshot    ${SCREENSHOT_DIR}/after_form_filled.png
    Click Element    //button[contains(text(), 'Submit')]
    Capture Page Screenshot    ${SCREENSHOT_DIR}/after_submit.png
    Close Browser

*** Keywords ***
Ensure Screenshot Directory Exists
    [Arguments]    ${path}
    Create Directory    ${path}
    ...                exist_ok=True
