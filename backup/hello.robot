*** Settings ***
Library    hello.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${resultado}=    Hello Robot    Alessandra
    Should Be Equal    ${resultado}    Olá, Alessandra.