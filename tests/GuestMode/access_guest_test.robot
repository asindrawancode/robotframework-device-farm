*** Settings ***
Documentation     User can access app as guest
Resource          ../../resources/keywords/common_keywords.robot
Resource          ../../resources/keywords/guest.robot
Suite Setup         Open TelkomselApp
Suite Teardown      Close App
Test Setup          Allow Notification Pop-up

*** Test Cases ***
Access Guest Mode Successfully
    [Documentation]    Verify that a user can access Guest Mode from the login screen.
    Enter Guest Mode
    Page Should Contain Text    Guest
    Capture Page Screenshot

