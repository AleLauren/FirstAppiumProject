*** Settings ***

Resource              ../resources/base.robot
    
Test Setup            Open Session
Test Teardown         Close Session

*** Test Cases ***
Deve logar com sucesso
    Go To Login Form

    Input Text       id=io.qaninja.android.twp:id/etEmail        eu@papito.io
    Input Text       id=io.qaninja.android.twp:id/etPassword     qaninja
    Click Element    id=io.qaninja.android.twp:id/btnSubmit

    Wait Until Page Contains    Show! Suas credenciais são validas.