*** Settings ***
Resource          ../../resources/keywords/common_keywords.robot
Resource          ../../resources/keywords/onboarding.robot
Resource          ../../resources/pages/common_page.robot
Resource          ../../resources/variables.robot

Suite Setup         Open TelkomselApp
Suite Teardown      Close App
Test Setup          Allow Notification Pop-up


*** Test Cases ***
Skip Onboarding at First Screen
    [Documentation]    Ensure that users can skip onboarding from the first screen.
    Verify Onboarding Content    ${ONBOARDING_SCREEN1_TEXT}
    Skip Onboarding
    Verify Greeting Label
    Close App

Skip Onboarding at Middle Screen
    [Documentation]    Ensure that users can skip onboarding from a middle screen.
    Open TelkomselApp
    Navigate to Next Screen
    Navigate to Next Screen
    Verify Onboarding Content    ${ONBOARDING_SCREEN3_TEXT}
    Skip Onboarding
    Verify Greeting Label

