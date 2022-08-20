*** Settings ***

Resource          ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Deve mover o Hulk para o topo da lista
    Go To Avengers List
    Drag and Drop            io.qaninja.android.twp:id/drag_handle    3    0
    Sleep    5

    
