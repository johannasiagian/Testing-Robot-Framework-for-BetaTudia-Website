*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}               http://127.0.0.1:8000/
${BROWSER}           edge
${READMORE_BUTTON}   //*[@id="your-read-more-button-id"]

*** Test Cases ***
Tambah Profile Without Login
    Open Browser              ${URL}        ${BROWSER}
    Set Selenium Implicit Wait    10
    Wait Until Element Is Visible    ${READMORE_BUTTON}    timeout=10
    Click Element             ${READMORE_BUTTON}
