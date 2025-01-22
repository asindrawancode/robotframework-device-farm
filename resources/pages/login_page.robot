*** Settings ***
Library           AppiumLibrary
Resource          common_page.robot
Variables         ../../resources/locators.py


*** Keywords ***
Click Back Button
    ${locator}=    Get Locator    LoginPage    buttonBack
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Click Element     ${locator}

Click Login Button
    ${locator}=    Get Locator    LoginPage    buttonLogin
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Click Element     ${locator}

Verify Login Tittle
    ${locator}=    Get Locator    LoginPage    loginLabel
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}

Verify Button Login With Tsel Number
    ${locator}=    Get Locator    LoginPage    buttonLoginWithTselNumber
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}

Verify Button Login With Orbit Number
    ${locator}=    Get Locator    LoginPage    buttonLoginWithOrbit
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}

Verify Button Login With Indihome Number
    ${locator}=    Get Locator    LoginPage    buttonLoginWithIndihome
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}

Verify Label Verification
    ${locator}=    Get Locator    LoginPage    lblVerification
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}

Navigate Login With Indihome Number
    ${locator}=    Get Locator    LoginPage    buttonLoginWithIndihome
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Click Element    xpath=${locator}

Enter Indihome Number
    [Arguments]     ${number}
    ${locator}=    Get Locator    LoginPage    editTextPhoneNumber
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Clear Text    ${locator}
    Input Text    xpath=${locator}  ${number}