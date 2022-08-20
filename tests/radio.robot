*** Settings ***

Resource          ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Deve selecionar a opção Python
    Go To Radion Buttons

    ${element}=    Set Variable    xpath=//android.widget.RadioButton[contains(@text,'Python')]

    Click Element                     ${element}
    Wait Until Element Is Visible     ${element}
    Element Attribute Should Match    ${element}    checked    true