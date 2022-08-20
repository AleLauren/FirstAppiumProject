*** Settings ***

Library     AppiumLibrary
Library     libs/extend.py
Resource    helpers.robot

*** Keywords ***
Open Session
    Set Appium Timeout      5
    Open Application        http://localhost:4723/wd/hub
    ...                     appium:automationName=UiAutomator2
    ...                     platformName=Android
    ...                     appium:deviceName=Emulator
    ...                     app=${EXECDIR}/app/twp.apk
    Get Started

Close Session
    Capture Page Screenshot
    Close Application
