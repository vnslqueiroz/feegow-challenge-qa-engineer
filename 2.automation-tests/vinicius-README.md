# Instalando dependências e preparo de ambiente

## Pré-requisitos

### Instalação do Python
1. Baixe e instale o Python a partir de [python.org](https://www.python.org/downloads/).
2. Durante a instalação, habilite a opção "Add Python to PATH".
3. Verifique a instalação:

   # python --version

### Instalação do Robot Framework e SeleniumLibrary
1. Instale o Robot Framework:

   # pip install robotframework

2. Instale o SeleniumLibrary:

   # install robotframework-seleniumlibrary

### Configuração do WebDriver
1. Baixe o WebDriver para o Chrome [ChromeDriver](https://chromedriver.chromium.org/downloads).
2. Adicione o WebDriver ao PATH do sistema.
3. Verifique se o WebDriver está funcionando:
   
   # chromedriver --version
   

## Executar os testes
1. Execute o teste com o comando abaixo dentro da pasta de origem do arquivo 'vinicius-agendamento.robot':
  
   # robot vinicius-agendamento.robot
   
