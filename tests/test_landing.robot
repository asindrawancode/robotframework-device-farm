*** Settings ***
Documentation     User can access app as guest
Resource          ../resources/keywords/common_keywords.robot
Resource          ../resources/pages/onboarding_page.robot
Resource          ../resources/pages/home_page.robot
Suite Setup         Open TelkomselApp
Suite Teardown      Close App
Test Setup          Allow Notification Pop-up


*** Test Cases ***
Tsel-2: User can see the onboarding screen
    [Documentation]    User can see the onboarding screen
    Verify Onboarding Title
    Click Skip Button
    Verify Greeting Label
    Capture Page Screenshot
