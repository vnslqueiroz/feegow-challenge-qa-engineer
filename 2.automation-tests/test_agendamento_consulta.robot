*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://minhaclinica.com/agendamento
${HORARIO}        10:00

*** Test Cases ***
Agendar Consulta
    [Documentation]    Teste para agendar uma nova consulta em um horário disponível
    Open Browser    ${URL}    Chrome
    Wait Until Page Contains Element    id:horario
    Select From List    id:horario    ${HORARIO}
    Click Button    id:agendar
    Wait Until Page Contains    ${HORARIO}
    Close Browser

Cancelar Consulta
    [Documentation]    Teste para cancelar a consulta agendada
    Open Browser    ${URL}    Chrome
    Wait Until Page Contains Element    id:cancelar
    Click Button    id:cancelar
    Wait Until Page Does Not Contain    ${HORARIO}
    Close Browser