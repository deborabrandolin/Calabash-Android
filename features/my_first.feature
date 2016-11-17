Feature:my_first
 Scenario:Fazer o login no aplicativo

    Given que estou na tela principal
      When eu clicar em entrar
      And eu preencher o campo CPF com "35679304864"
      And eu preencher o campo Senha com "147258"
      And eu clicar em Continuar
        Then a tela de boas vindas sera exibida
        And eu clicar em continuar
        And eu clicar no menu
        And eu clicar em sair
        And eu confirmo sair do sistema
