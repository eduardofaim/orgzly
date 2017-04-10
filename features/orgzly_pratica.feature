#language: pt
#encode: UTF-8

Funcionalidade: Testar Orzly
	Eu como usuario gostaria de testar o APK OrgZly
	Fuçando o maximo de funções possíveis.

@inm1
	Cenario: Trocar cor tema do app para Black
		Dado que eu esteja na tela inicial
		Então eu clico no botão Menu
		E clico no botão Settings
		E procuro Color scheme e clico
		Então escolho a opção Black
@inm2
	Cenario: Adicionar nova Nota em uma Agenda nova
		Dado que esteja com app ativo
		Então clico no botão Adicionar
		E crio uma nota nova (TODO) dentro de uma agenda nova com todos os campos preenchidos
		Então validar e excluir nota criada





