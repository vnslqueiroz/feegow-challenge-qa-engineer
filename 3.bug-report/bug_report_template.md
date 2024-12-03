# Bug Report

## Título do Bug
Erro ao cancelar consulta criada nos últimos 5 minutos

---

## Descrição
**Resumo**: O sistema não permite o cancelamento de uma consulta criada nos últimos 5 minutos. O botão de cancelamento não realiza a ação esperada e não retorna nenhuma mensagem de erro ou informação ao usuário.

**Impacto**: Este bug causa frustração nos usuários, pois impede o cancelamento de consultas imediatamente após a criação. Isso pode gerar confusão sobre o funcionamento da funcionalidade e reduzir a confiança no sistema. Além disso, pode levar a falhas em operações sensíveis ao tempo, como correções rápidas de agendamentos errados.

---

## Passos para Reproduzir o bug

Passo 1 - Acesse a página de agendamento de consultas: https://clinicaluz.com/agendamento.

Passo 2 - Selecione um horário disponível e clique no botão "Agendar".

Passo 3 - Verifique que a consulta foi adicionada à lista de consultas agendadas.

Passo 4 - Imediatamente após o agendamento, clique no botão "Cancelar" ao lado da consulta criada.

Passo 5 - Observe que o sistema não cancela a consulta e não exibe mensagens de erro ou feedback ao usuário.

---

## Comportamento Esperado

O sistema deveria permitir que o usuário cancelasse uma consulta imediatamente após a criação, sem restrição de tempo.

---

## Comportamento Atual

O sistema impede o cancelamento de consultas criadas nos últimos 5 minutos, sem qualquer mensagem de erro ou informação ao usuário sobre o bloqueio.
---

## Ambiente de Teste

Dispositivo: Desktop

Sistema Operacional: Windows 11

Navegador: Google Chrome 117.0.5938.132

Ambiente: Staging

---

## Evidências

Observação: Pelo fato do sistema e o contexto serem fictícios não há maneiras de evidenciar o bug acontecendo.

---

## Critérios de Aceitação

- Permitir que consultas sejam canceladas imediatamente após a criação, sem restrições de tempo.

- Exibir uma mensagem clara ao usuário em caso de falhas no cancelamento.

- Garantir que a funcionalidade de cancelamento funcione corretamente em todos os dispositivos e navegadores suportados.
  
---

## Observações Adicionais

- Verificar se o problema está relacionado a validações no backend ou frontend.

- Avaliar possíveis soluções temporárias, como permitir o cancelamento sem restrições de tempo até a resolução definitiva do bug.
