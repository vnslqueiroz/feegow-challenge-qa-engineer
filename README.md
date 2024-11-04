# QA Engineer Technical Challenge

## Descrição

Bem-vindo ao desafio técnico para a vaga de QA Engineer! Este teste é projetado para avaliar suas habilidades em automação de testes, documentação de bugs, criação de cenários de teste e integração com DevOps.

Para realizar o desafio, você precisará completar as etapas descritas abaixo, enviando o código e a documentação neste repositório.

## Objetivo

O objetivo deste desafio é avaliar:
- Capacidade de identificar e descrever cenários de teste críticos.
- Habilidades em automação de testes end-to-end.
- Competências na documentação de bugs e comunicação com times técnicos.
- Entendimento sobre integração de QA com pipelines CI/CD.

## Requisitos Técnicos

- **Linguagens**: PHP, Python, JavaScript ou TypeScript.
- **Frameworks de Automação**: [Playwright](https://playwright.dev/) ou [Robot Framework](https://robotframework.org/).
- **Controle de Versão**: Git.
- **Pipeline CI/CD**: Familiaridade com GitHub Action ou Jenkins é um diferencial.

---

## Desafio

### Etapa 1: Definição de Testes e Critérios de Qualidade

**Descrição da Tarefa**:
- Crie uma documentação que contenha os cenários de teste principais para o fluxo de agendamento de consultas.
- Use uma **matriz de risco (probabilidade vs. impacto)** para priorizar os cenários de teste. Considere a probabilidade de um defeito ocorrer em cada cenário e o impacto que ele teria no sistema.
  - **Probabilidade**: Qual a chance de esse problema ocorrer no uso do sistema?
  - **Impacto**: Qual o impacto no sistema ou na experiência do usuário caso o problema ocorra?

**Contexto do Sistema**:
Imagine um sistema de agendamento de consultas para clínicas e profissionais de saúde com os seguintes requisitos básicos:
  - Usuários podem agendar consultas em horários disponíveis.
  - Consultas podem ser canceladas.
  - Somente horários válidos e disponíveis devem ser apresentados para o agendamento.
  - O sistema deve lidar com tentativas de agendamento em horários já ocupados de forma apropriada.
  
**Exemplos de Cenários para Avaliação**:
  - Agendamento de uma nova consulta para um horário disponível.
  - Cancelamento de uma consulta existente.
  - Exibição correta de horários disponíveis.
  - Tentativa de agendamento em um horário já ocupado.
  - Restrição de cancelamento de consulta criada recentemente.

**Matriz de Risco (Exemplo)**:
Abaixo está um exemplo de matriz de risco para guiar sua análise de priorização. Use uma estrutura semelhante para avaliar os casos de teste propostos.

| ID   | Caso de Teste                            | Probabilidade (1-5) | Impacto (1-5) | Nível de Risco (P x I) | Prioridade |
|------|------------------------------------------|----------------------|---------------|-------------------------|------------|
| TC01 | Agendar uma nova consulta                | 3                    | 5             | 15                      | Alta       |
| TC02 | Cancelar uma consulta recém-criada       | 2                    | 4             | 8                       | Média      |
| TC03 | Verificar horários disponíveis           | 4                    | 3             | 12                      | Alta       |
| TC04 | Tentar agendar em horário ocupado        | 5                    | 2             | 10                      | Média      |
| TC05 | Restrição de cancelamento recente        | 2                    | 3             | 6                       | Baixa      |

> **Notas**: Na matriz acima, uma pontuação mais alta indica uma prioridade maior para o teste. **Probabilidade** varia de 1 (baixa chance de ocorrer) a 5 (alta chance), e **Impacto** varia de 1 (impacto baixo) a 5 (impacto alto).

**Entrega**:
- Crie a documentação no diretório `/documentation`, incluindo a matriz de risco e a justificativa para a priorização.
- Use um formato de arquivo de sua escolha (Markdown ou PDF).

**Critérios de Avaliação**:
1. Cobertura dos cenários de teste.
2. Clareza e organização da documentação.
3. Justificativa para os tipos de teste sugeridos.
4. Uso eficaz da matriz de risco para priorização.

---

### Etapa 2: Implementação de Testes Automatizados

**Descrição da Tarefa**:
- Implemente uma automação de teste end-to-end para a funcionalidade de agendamento e cancelamento de consultas em um sistema fictício de clínicas e profissionais de saúde.
- A funcionalidade a ser testada inclui:
  - Agendar uma nova consulta em um horário disponível.
  - Cancelar a consulta recém-agendada e confirmar o cancelamento.
- Você pode escolher qualquer framework de automação end-to-end, como [Playwright](https://playwright.dev/) ou [Robot Framework](https://robotframework.org/).

**Contexto do Sistema**:
Imagine que estamos testando a página de agendamento de consultas de uma clínica. O sistema permite que o usuário:
- Selecione um horário disponível para uma consulta.
- Confirme o agendamento.
- Visualize a consulta agendada em uma lista.
- Cancele uma consulta existente.

Para este exercício, vamos supor que:
- A URL para o agendamento é `https://minhaclinica.com/agendamento`.
- O horário de consulta pode ser selecionado em uma lista suspensa.
- Um botão de "Agendar" e um botão de "Cancelar" estão disponíveis para realizar as operações.

**Entrega**:
- Adicione o código dos testes no diretório `/automation-tests`.
- Inclua um arquivo `README.md` dentro da pasta `/automation-tests` com instruções para rodar os testes (ex.: instalação de dependências e comandos para execução).

**Critérios de Avaliação**:
1. Cobertura do fluxo solicitado.
2. Qualidade e organização do código.
3. Configuração de execução dos testes no CI/CD (opcional, mas diferencial).


---

### Etapa 3: Simulação de um Problema Técnico

1. **Descrição da Tarefa**:
   - Documente um bug fictício em que o sistema não permite o cancelamento de uma consulta criada nos últimos 5 minutos.
   - Inclua a descrição do problema, passos de reprodução, ambiente de teste e critérios de aceitação para corrigir o problema.

2. **Entrega**:
   - Crie o documento no diretório `/bug-report` em formato Markdown ou PDF.

3. **Critérios de Avaliação**:
   - Clareza e detalhamento do relatório de bug.
   - Precisão nos passos para reprodução.
   - Definição de critérios de aceitação.

---

### Etapa 4: Interação com Times DevOps e Produto

1. **Descrição da Tarefa**:
   - Explique como você integraria o QA na pipeline de CI/CD e como definiria os critérios de qualidade e aceitação com o time de Produto e DevOps.
   - Descreva o processo e as ferramentas que você usaria para garantir qualidade no CI/CD.

2. **Entrega**:
   - Documente sua resposta no diretório `/documentation` em um arquivo Markdown ou PDF.

3. **Critérios de Avaliação**:
   - Compreensão do processo de CI/CD.
   - Capacidade de definir critérios de aceitação e qualidade.
   - Comunicação clara e habilidades de trabalho em equipe.

---

## Orientações Gerais

- **Prazo**: Este teste deve ser concluído em até 5 dias após o recebimento.
- **Dúvidas**: Caso tenha alguma dúvida sobre o desafio, entre em contato com o responsável por este processo seletivo.

## Como Enviar o Desafio

1. Realize um fork deste repositório para o seu perfil do GitHub.
2. Faça commits das suas alterações conforme necessário.
3. Ao finalizar, envie o link do seu repositório para o responsável pelo processo seletivo.

---

## Pontos Extras

- Configuração de execução de testes em pipeline CI/CD (ex.: GitHub Actions, Jenkins).
- Qualquer sugestão de melhoria para o fluxo ou automação de QA.

Boa sorte! Estamos ansiosos para ver sua abordagem!
