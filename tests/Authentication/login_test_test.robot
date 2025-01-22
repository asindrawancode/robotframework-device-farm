*** Settings ***
Documentation       User can access app as guest
Resource            ../../resources/keywords/common_keywords.robot
Resource            ../../resources/keywords/onboarding.robot
Resource            ../../resources/pages/home_page.robot
Resource            ../../resources/pages/login_page.robot
Suite Setup         Open TelkomselApp
Suite Teardown      Close App
Test Setup          Allow Notification Pop-up


*** Test Cases ***
Verify that a user can access login method
    [Documentation]    User can login using 3 method : Tsel, Orbit dan Indihome
    Complete Onboarding
    Navigate to Login Page
    Verify Login Tittle
    Verify Button Login With Tsel Number
    Verify Button Login With Orbit Number
    Verify Button Login With Indihome Number
    Capture Page Screenshot

Verify that a user can log in with Telkomsel number
   [Documentation]    User can successfully login with Telkomsel number
   Navigate Login With Indihome Number
   Enter Indihome Number    ${NUMBER_INDIHOME}
   Click Login Button
   Verify Label Verification
   Capture Page Screenshot