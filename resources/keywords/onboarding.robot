*** Settings ***
Library    AppiumLibrary
Resource    ../pages/onboarding_page.robot
Resource    ../pages/home_page.robot
Resource    ../variables.robot

*** Keywords ***
Complete Onboarding
    [Documentation]    Navigate through all onboarding screens to completion.
    FOR    ${index}    IN RANGE    0    ${TOTAL_ONBOARDING_SCREENS}
        Navigate to Next Screen
        Sleep    1s
    END
    Verify Greeting Label

Verify Onboarding Content
    [Arguments]    ${expected_text}=${None}
    [Documentation]    Verify that the current onboarding screen displays the expected content.
    Run Keyword If    '${expected_text}' != 'None'    Wait Until Page Contains    ${expected_text}      10
