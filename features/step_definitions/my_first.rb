#encoding: UTF-8
Given(/^que estou na tela principal$/) do
  element_exists("* text:'Bem-vindo à Dotz'")
end

When(/^eu clicar em entrar$/) do
  touch("* id:'login'")
end

When(/^eu preencher o campo CPF com "(.*?)"$/) do |arg1|
  enter_text "* id:'identifier_hint'", "35679304864"
end

When(/^eu preencher o campo Senha com "(.*?)"$/) do |arg1|
  enter_text "* id:'password_hint'", "147258"
end

When(/^eu clicar em Continuar$/) do
  touch("* id:'login'")
end

When(/^a tela de boas vindas sera exibida$/) do
  sleep(5)
  element_exists("* text:'Bem-vinda de volta à Dotz'")
end

Then(/^eu clicar em continuar$/) do
  sleep(2)
  touch("* id:'next'")
end

Then(/^eu clicar no menu$/) do
  touch(query("o"))
end

Then(/^eu clicar em sair$/) do
  scroll("ScrollView", :down)
  touch("* id:'exit'")
end

Then(/^eu confirmo sair do sistema$/) do
  touch("* id:'button1'")
end
