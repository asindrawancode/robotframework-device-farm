*** Settings ***
Library           AppiumLibrary
Resource          common_page.robot
Variables         ../../resources/variables.py
Variables         ../../resources/locators.py

*** Keywords ***

# Verify
Verify Greeting Label
    Allow Notification Pop-up
    ${locator}=    Get Locator    HomePage    greetingLabel
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}

Verify Notification Icon
    ${locator}=    Get Locator    HomePage    notificationIcon
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}


Verify Menu Main
    ${locator}=    Get Locator    HomePage    homeMenuMain
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}


Verify Home Buy Package
    ${locator}=    Get Locator    HomePage    homeMenuBuyPacket
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}


Verify Home Mall
    ${locator}=    Get Locator    HomePage    homeMenuMall
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}


Verify Home Reward
    ${locator}=    Get Locator    HomePage    homeMenuReward
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}


Verify Home Lifestyle
    ${locator}=    Get Locator    HomePage    homeMenuLifestyle
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}


# Navigate
Navigate to Menu Main
    ${locator}=    Get Locator    HomePage    homeMenuMain
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Click Element    xpath=${locator}


Navigate to Home Buy Package
    ${locator}=    Get Locator    HomePage    homeMenuBuyPacket
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Click Element    xpath=${locator}


Navigate to Verify Home Mall
    ${locator}=    Get Locator    HomePage    homeMenuMall
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Page Should Contain Element    xpath=${locator}
    Click Element    xpath=${locator}


Navigate to Home Reward
    ${locator}=    Get Locator    HomePage    homeMenuReward
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Click Element    xpath=${locator}


Navigate to Home Lifestyle
    ${locator}=    Get Locator    HomePage    homeMenuLifestyle
    Wait Until Element Is Visible    xpath=${locator}    timeout=10s
    Click Element    xpath=${locator}

Navigate to Login Page
     ${locator}=    Get Locator    HomePage    btnHomeLogin
     Wait Until Element Is Visible    xpath=${locator}    timeout=10s
     Click Element    xpath=${locator}