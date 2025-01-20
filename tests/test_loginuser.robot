*** Settings ***
Documentation       User can access app as guest
Resource            ../resources/keywords/common_keywords.robot
Resource            ../resources/pages/onboarding_page.robot
Resource            ../resources/pages/home_page.robot
Resource            ../resources/pages/login_page.robot
Suite Setup         Open TelkomselApp
Suite Teardown      Close App
Test Setup          Allow Notification Pop-up


*** Test Cases ***
DG1-13: Pengguna menekan tombol login
    [Documentation]    DG1-13: Pengguna dapat melakukan login denggan 3 nomor, yaitu : Tsel, Orbit dan Indihome
    Verify Onboarding Title
    Click Skip Button
    Verify Greeting Label
    Navigate to Login Page
    Verify Login Tittle
    Verify Button Login With Tsel Number
    Verify Button Login With Orbit Number
    Verify Button Login With Indihome Number
    Capture Page Screenshot

DG1-17: Pengguna berhasil login dengan nomor Telkomsel
   [Documentation]    DG1-17: Pengguna berhasil login dengan nomor Telkomsel
   Navigate Login With Indihome Number
   Enter Indihome Number
   Click Login Button
   Verify Label Verification
   Capture Page Screenshot

