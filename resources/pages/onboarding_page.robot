*** Settings ***
Library           AppiumLibrary
Resource          common_page.robot
Variables         ../../resources/variables.py
Variables         ../../resources/locators.py

*** Keywords ***
Verify Onboarding Title
    ${locator}=    Get Locator    OnboardingPage    onboardingTitle1
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Page Should Contain Element    ${locator}
    Capture Page Screenshot

Click Skip Button
    ${locator}=    Get Locator    OnboardingPage    buttonSkip
    Click Element     ${locator}
