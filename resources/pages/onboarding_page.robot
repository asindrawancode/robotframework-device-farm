*** Settings ***
Library           AppiumLibrary
Resource          common_page.robot
Resource         ../../resources/variables.robot
Variables         ../../resources/locators.py

*** Keywords ***
Navigate to Next Screen
    [Documentation]    Click the "Next" button to proceed in onboarding.
    ${locator}=    Get Locator    OnboardingPage    buttonNext
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Click Element     ${locator}

Skip Onboarding
    [Documentation]    Click the "Skip" button to bypass onboarding.
    ${locator}=    Get Locator    OnboardingPage    buttonSkip
    Click Element     ${locator}
    Allow Notification Pop-up
    Wait Until Page Contains    Guest