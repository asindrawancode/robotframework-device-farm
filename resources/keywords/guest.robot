*** Settings ***
Library    AppiumLibrary
Resource    ../keywords/onboarding.robot
Resource    ../pages/home_page.robot
Resource    ../variables.robot

*** Keywords ***
Enter Guest Mode
    [Documentation]    Navigate to Guest Mode from the login screen.
    Complete Onboarding

Browse Data Packages as Guest
    [Arguments]    @{packages}
    [Documentation]    Allow Guest to browse data packages.
    Navigate to Special Sim Card
    FOR    ${SIM}    IN    @{SIMS}
        Wait Until Page Contains    ${SIM}
    END