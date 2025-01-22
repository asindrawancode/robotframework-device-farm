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
Verify that a user cannot log in with Invalid Telkomsel number
   [Documentation]    Ensure that the app displays an error message when logging in with Telkomsel number
   Complete Onboarding
   Navigate to Login Page
   Verify Login Tittle
   Navigate Login With Indihome Number
   Enter Indihome Number    ${INVALID_NUMBER}
   Click Login Button
   Wait Until Page Contains    Maaf, Data Kontak IndiHome tidak ditemukan
   Capture Page Screenshot