// test_agendamento_consulta.spec.js
const { test, expect } = require('@playwright/test');

test.describe('Agendamento de Consulta', () => {
  test('Deve agendar uma nova consulta com sucesso', async ({ page }) => {
    await page.goto('https://minhaclinica.com/agendamento');

    // Selecionar um horário disponível
    await page.selectOption('#horario', '10:00');
    await page.click('#agendar'); // Botão para agendar a consulta

    // Verificar se a consulta foi agendada
    const consultaAgendada = await page.locator('.consulta').textContent();
    expect(consultaAgendada).toContain('10:00');
  });

  test('Deve cancelar a consulta agendada', async ({ page }) => {
    await page.goto('https://minhaclinica.com/agendamento');

    // Cancelar a consulta
    await page.click('#cancelar'); // Botão para cancelar a consulta

    // Verificar se a consulta foi cancelada
    const consultaAgendada = await page.locator('.consulta').textContent();
    expect(consultaAgendada).not.toContain('10:00');
  });
});