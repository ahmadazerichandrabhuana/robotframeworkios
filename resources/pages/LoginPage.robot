***Settings***
Resource   ../helpers/CommonIOS.robot
Resource   ../locators/LoginPageLocator.robot
Resource   ../locators/ProductsPageLocator.robot

*** Keywords ***
Verify Header "SWAGLABS" Appear
    Verify Element 	 ${textHeaderLogin}

Verify Header "SWAGLABS" Appear Failed
    Verify Element 	 ${textHeaderProducts}

Input Username
    [Arguments]  ${text}
    Input Text to Element  	 ${inputUsername}  ${text}

Input Password
    [Arguments]  ${text}
    Input Text to Element  	 ${inputPassword}  ${text}

Click button Login
    Click Element            ${buttonLogin}

Verify Error Appear
    [Arguments]  ${text}
    Verify Element Text      ${textErrorLogin}  ${text} 