*** Settings ***
Resource          ../../resources/keywords/common_keywords.robot
Resource          ../../resources/keywords/onboarding.robot
Resource          ../../resources/pages/common_page.robot
Resource          ../../resources/variables.robot

Suite Setup         Open TelkomselApp
Suite Teardown      Close App
Test Setup          Allow Notification Pop-up

*** Test Cases ***
Navigate Through All Onboarding Screens
    [Documentation]    Verify that a user can navigate through all onboarding screens using the "Next" button.
    FOR    ${content}    IN    @{ONBOARDING_CONTENT}
        Verify Onboarding Content    ${content}
        Navigate to Next Screen
    END
    Verify Greeting Label