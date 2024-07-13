*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}               http://127.0.0.1:8000/contributor/register
${BROWSER}           edge
${USERNAME}          andii
${EMAIL}             andi@gmail.com
${PASSWORD}          andii123
${ULANGIPASSWORD}    andii123
${REGISTRASI_BUTTON}  //html/body/section/div/div/div/div/div/div[2]/div/form/div[4]

*** Test Cases ***
Register User
    Open Browser                ${URL}     ${BROWSER}
    Set Selenium Implicit Wait  5
    Input Text                  //*[@id="form2Example17"]    ${USERNAME}
    Input Text                  //*[@id="form2Example17"]    ${EMAIL}
    Input Password              //*[@id="form2Example27"]    ${PASSWORD}
    Input Password              //*[@id="form2Example28"]    ${ULANGIPASSWORD}
    Click Element               ${REGISTRASI_BUTTON}
