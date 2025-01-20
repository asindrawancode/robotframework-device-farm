*** Settings ***
Documentation     User can access app as guest
Resource          ../resources/keywords/common_keywords.robot
Resource          ../resources/pages/onboarding_page.robot
Resource          ../resources/pages/home_page.robot
Resource          ../resources/pages/login_page.robot
Suite Setup         Open TelkomselApp
Suite Teardown      Close App
Test Setup          Allow Notification Pop-up


*** Test Cases ***
TSEL1-4: User can access home as guest
    [Documentation]    TSEL1-4: User can access home as guest
    Verify Onboarding Title
    Click Skip Button
    Verify Greeting Label
    Capture Page Screenshot

TSEL1-5: User can see home's content as guest
    [Documentation]    TSEL1-5: User can see home's content as guest
    Verify Greeting Label
    Verify Notification Icon
    Capture Page Screenshot

DG1-6: User can see the main menu
    [Documentation]    DG1-6: User can see the main menu
    Verify Menu Main
    Verify Home Buy Package
    Verify Home Mall
    Verify Home Reward
    Verify Home Lifestyle
    Navigate to Menu Main
    Navigate to Home Buy Package
    Click Back Button
    Navigate to Verify Home Mall
    Click Back Button
    Navigate to Home Reward
    Click Back Button
    Navigate to Home Lifestyle
    Click Back Button
    Capture Page Screenshot

DG1-7: User can scroll the home screen
    [Documentation]    DG1-6: User can see the main menu
    Scroll Until Text Is Found  Rupiah
    Capture Page Screenshot



