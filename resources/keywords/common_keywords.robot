*** Settings ***
Library           AppiumLibrary
Resource         ../variables.robot

*** Keywords ***
Open TelkomselApp
    [Documentation]    Opens the application based on the platform
    ${app_path}=    Run Keyword If    '${PLATFORM_NAME}' == 'Android'    Set Variable    ${APP_PATH_ANDROID}
    ...    ELSE IF    '${PLATFORM_NAME}' == 'iOS'    Set Variable    ${APP_PATH_IOS}
    Open Application
    ...     ${REMOTE_URL}
    ...     platformName=${PLATFORM_NAME}
    ...     udid=${UDID}
    ...     app=${app_path}
    ...     automationName=${AUTOMATION_NAME}
    ...     noReset=false
    ...     appPackage=${APP_PACKAGE}
    ...     appActivity=${APP_ACTIVITY}

Close App
    [Documentation]    Closes the application after testing
    Close Application