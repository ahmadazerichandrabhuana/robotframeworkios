*** Settings ***
Resource    ../../config/ios_config.robot

*** Keywords ***
Swipe Screen From Right to Left
    [Documentation]  Swipe screen from right to left
    AppiumLibrary.Swipe By Percent  90  50  10  50

Swipe Screen From Left to Right
    [Documentation]  Swipe screen from left to right
    AppiumLibrary.Swipe By Percent  10  50  90  50

Swipe Screen From Top to Down
    [Documentation]  Swipe screen from top to down
    AppiumLibrary.Swipe By Percent  50  90  50  10

Swipe Screen From Down to Top
    [Documentation]  Swipe screen from down to top
    AppiumLibrary.Swipe By Percent  50  10  50  90

Swipe Screen From Top to Down until Element Found, Max Swipe 10 Times
    [Arguments]  ${element}  ${maxTimes}=10
    [Documentation]  Swipe Screen From Top to Down X times or until the element is found
    ${elementExist}=  Get Matching Xpath Count  ${element}
    FOR    ${index}    IN RANGE    ${maxTimes}
        Exit For Loop If  ${elementExist} > 0
        AppiumLibrary.Swipe By Percent  50  75  50  25
        ${elementExist}=  Get Matching Xpath Count  ${element}
    END

Hide Keyboard
    [Documentation]    Hide iOS Keyboard
    AppiumLibrary.Hide Keyboard                    key_name=Done

Click Element
    [Arguments]  ${element}
    [Documentation]     Click a specific element when the element is visible
    AppiumLibrary.Wait Until Element Is Visible    ${element}
    AppiumLibrary.Click Element                    ${element}

Input Text to Element
    [Arguments]     ${element}      ${value}
    [Documentation]     Clear and Input a text to an Input Field
    AppiumLibrary.Wait Until Element Is Visible      ${element}
    Hide Keyboard
    AppiumLibrary.Clear Text                         ${element}
    AppiumLibrary.Input Text                         ${element}    ${value}

Verify Element
    [Arguments]     ${element}
    [Documentation]     Wait Element until the element is visible
    AppiumLibrary.Wait Until Element Is Visible      ${element}

Verify Element Not Available
    [Arguments]     ${element}
    [Documentation]     Wait Element until the element is not visible
    AppiumLibrary.Wait Until Page Does Not Contain Element      ${element}

Verify Element Text
    [Arguments]     ${element}  ${text}
    [Documentation]     Validate Element have specific Text
    AppiumLibrary.Wait Until Element Is Visible      ${element}
    AppiumLibrary.Element Text Should Be      ${element}  ${text}