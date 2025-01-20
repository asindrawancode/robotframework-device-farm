*** Settings ***
Library           AppiumLibrary
Variables         ../variables.py
Variables         ../locators.py

*** Variables ***
${MAX_SCROLLS}    5

*** Keywords ***
Get Locator
    [Arguments]    ${page}    ${element}
    ${platform}=    Set Variable    ${PLATFORM_NAME}
    ${locator}=     Set Variable    ${LOCATORS["${page}"]["${platform}"]["${element}"]}
    RETURN        ${locator}

Allow Notification Pop-up
    ${locatorTitle}=    Get Locator    HomePage    allowSendNotification
    ${locatorBtn}=    Get Locator    HomePage    btnAllowSendNotification
    ${is_visible}    Run Keyword And Return Status    Wait Until Element Is Visible    ${locatorTitle}  2
    Run Keyword If    ${is_visible}    Click Element    ${locatorBtn}

Scroll Until Text Is Found
    [Arguments]    ${text}
    [Documentation]    This test will scroll up to 5 times or until the element is visible.
    ${scroll_count}=    Set Variable    0
    WHILE    ${scroll_count} < ${MAX_SCROLLS}
        ${is_found}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.widget.TextView[contains(@text,'${text}')]
        Exit For Loop If    ${is_found}
        Swipe Up
        ${scroll_count}=    Evaluate    ${scroll_count} + 1
    END

Swipe Up
    [Arguments]    ${start_x}=50    ${start_y}=80    ${end_x}=50    ${end_y}=20    ${duration}=100
    ${width}=    Get Window Width
    ${height}=   Get Window Height
    ${start_x}=  Evaluate    ${width} * ${start_x} / 100
    ${start_y}=  Evaluate    ${height} * ${start_y} / 100
    ${end_x}=    Evaluate    ${width} * ${end_x} / 100
    ${end_y}=    Evaluate    ${height} * ${end_y} / 100
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    ${duration}
