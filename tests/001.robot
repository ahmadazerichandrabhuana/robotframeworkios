***Settings***
Resource          ../resources/pages/LoginPage.robot

Suite Setup       Suite Setup Config
Test Setup        Test Setup Config
Test Teardown     Test Teardown Config
Suite Teardown    Suite Teardown Config

***Test Cases***
As an iOS user, I should be able to see Login Page when first Open the Apps
    [Documentation]  User should be redirected to Login Page
    LoginPage.Verify Header "SWAGLABS" Appear