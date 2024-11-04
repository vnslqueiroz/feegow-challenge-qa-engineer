# Plano de Teste para Sistema de Agendamento de Consultas

## Objetivo do Teste
Este plano de teste visa assegurar a qualidade do sistema de agendamento de consultas para clínicas e profissionais de saúde, garantindo que funcionalidades críticas estejam operando conforme esperado e que potenciais falhas sejam identificadas e priorizadas com base em risco.

---

## Escopo do Teste
### Funcionalidades a serem testadas:
1. Agendamento de nova consulta.
2. Cancelamento de consulta existente.
3. Exibição de horários disponíveis.
4. Tentativa de agendamento em horário já ocupado.
5. Restrição de cancelamento para consultas criadas recentemente.

### Funcionalidades fora do escopo:
- Alteração de dados do usuário.
- Integração com outros sistemas de saúde externos.

---

## Estratégia de Teste
O sistema será testado utilizando diferentes tipos de testes para cobrir todas as camadas de funcionalidade:
- **Testes Unitários**: Validar funcionalidades isoladas, como a lógica de validação de datas e horários.
- **Testes de Integração**: Garantir que as interações entre o frontend e o backend estejam funcionando conforme o esperado, especialmente para o carregamento e verificação de horários.
- **Testes End-to-End**: Validar os fluxos completos do usuário, incluindo agendamento e cancelamento de consultas.

---

## Priorização dos Testes - Matriz de Risco

| ID   | Caso de Teste                            | Probabilidade (1-5) | Impacto (1-5) | Nível de Risco (P x I) | Prioridade |
|------|------------------------------------------|----------------------|---------------|-------------------------|------------|
| TC01 | Agendar uma nova consulta                | 4                    | 5             | 20                      | Alta       |
| TC02 | Cancelar uma consulta existente          | 3                    | 4             | 12                      | Média      |
| TC03 | Verificar horários disponíveis           | 5                    | 3             | 15                      | Alta       |
| TC04 | Tentar agendar em horário ocupado        | 4                    | 2             | 8                       | Média      |
| TC05 | Restrição de cancelamento para consultas recentes | 2 | 3            | 6                       | Baixa      |

> **Notas**: A matriz de risco ajuda a priorizar os casos de teste com base na probabilidade de falha e no impacto dessa falha. A prioridade dos testes é definida conforme o nível de risco, com testes de alta prioridade executados primeiro para reduzir o risco de problemas críticos no sistema.

---

## Casos de Teste Principais

| ID   | Caso de Teste                          | Descrição                                                                                       | Tipo de Teste       | Prioridade |
|------|----------------------------------------|-------------------------------------------------------------------------------------------------|----------------------|------------|
| TC01 | Agendar uma nova consulta              | Testar se o usuário consegue agendar uma nova consulta com sucesso                              | End-to-End          | Alta       |
| TC02 | Cancelar uma consulta existente        | Testar se o usuário pode cancelar uma consulta já agendada                                      | End-to-End          | Média      |
| TC03 | Verificar horários disponíveis         | Testar se o sistema exibe apenas horários disponíveis para o agendamento                        | Integração          | Alta       |
| TC04 | Erro ao tentar agendar em horário ocupado | Testar se o sistema exibe um erro ao tentar agendar uma consulta em um horário já ocupado       | Unitário, Integração | Média      |
| TC05 | Restrição de cancelamento recente      | Testar se o sistema impede o cancelamento de consultas criadas nos últimos 5 minutos            | Unitário            | Baixa      |

---

## Critérios de Aceitação

### Definição de Pronto (DoD)
- Todos os casos de teste prioritários (alta e média prioridade) foram executados com sucesso.
- Não há bugs críticos ou bloqueantes no sistema de agendamento de consultas.
- Todas as funcionalidades principais foram validadas para garantir a experiência do usuário.

### Critérios de Aceitação por Caso de Teste
1. **Agendar uma nova consulta**: O sistema deve permitir o agendamento em qualquer horário disponível.
2. **Cancelar uma consulta existente**: O sistema deve permitir o cancelamento de uma consulta agendada sem falhas.
3. **Verificar horários disponíveis**: O sistema deve exibir apenas horários que estão livres para agendamento.
4. **Erro ao tentar agendar em horário ocupado**: O sistema deve exibir uma mensagem de erro ao tentar agendar em um horário já ocupado.
5. **Restrição de cancelamento recente**: O sistema deve impedir o cancelamento de consultas criadas nos últimos 5 minutos.

---

## Ambiente de Teste
- **Dispositivo**: Desktop e Mobile
- **Sistema Operacional**: Windows 10, macOS Catalina, Android 11, iOS 14
- **Navegador**: Google Chrome, Firefox, Safari, Edge
- **Ambiente**: Staging

---

## Observações Adicionais
Este plano de teste serve como uma diretriz para assegurar a funcionalidade crítica do sistema de agendamento de consultas. A priorização baseada em risco permite um foco maior em áreas que podem afetar a experiência do usuário de forma significativa.