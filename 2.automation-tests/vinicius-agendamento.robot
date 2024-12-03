*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://clinicaluz.com/agendamento

*** Test Cases ***
Agendar Consulta para 13h
    Open Browser    ${URL}    Chrome
    Select From List By Value    id=horarios-disponiveis    13:00
    Click Button    Agendar
    Element Text Should Be    xpath=//ul[@id="consultas-agendadas"]/li    13:00
    Close Browser

Visualizar Consulta em Lista
    Open Browser    ${URL}    Chrome
    Select From List By Value    id=horarios-disponiveis    13:00
    Click Button    Agendar
    Element Should Be Visible    xpath=//ul[@id="consultas-agendadas"]/li[contains(text(), "13:00")]
    Close Browser

Cancelar Consulta agendada para 13h
    Open Browser    ${URL}    Chrome
    Select From List By Value    id=horarios-disponiveis    13:00
    Click Button    Agendar
    Click Button    Cancelar
    Element Should Not Contain    xpath=//ul[@id="consultas-agendadas"]/li    13:00
    Close Browser

Agendar Consulta para 23h com Erro
    Open Browser    ${URL}    Chrome
    Select From List By Value    id=horarios-disponiveis    23:00
    Click Button    Agendar
    Element Text Should Be    xpath=//div[@id="erro"]    Consulta fora do horário comercial
    Close Browser