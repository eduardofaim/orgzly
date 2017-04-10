
require 'calabash-android/calabash_steps'
require 'pry'

#===================[inm1]===================

Dado(/^que eu esteja na tela inicial$/) do
	element_exists("* text:'Notebooks'")
	touch("* id:'button1'")
end

Então(/^eu clico no botão Menu$/) do
 	element_exists("* text:'Scheduled'")
end

Então(/^clico no botão Settings$/) do
	touch("* text:'Settings'")
end

Então(/^procuro Color scheme e clico$/) do
	touch("* id:'title' text:'Color scheme'")
end

Então(/^escolho a opção Black$/) do
   	touch("* id:'text1' text:'Black'")
   	element_exists("* text:'Black'")
   	shutdown_test_server
end

#===================[inm2]===================

Dado(/^que esteja com app ativo$/) do
  	 element_exists("* text:'New Notebook'")
end

Então(/^clico no botão Adicionar$/) do
	touch("* id:'fab'")
end

Então(/^crio uma nota nova \(TODO\) dentro de uma agenda nova com todos os campos preenchidos$/) do
	query("* id:'dialog_input'", { setText: "Test2" })
	touch("* id:'button1'")
	#query("* id:'item_book_title' text:'Test2'")
	touch("* id:'fab'")
	touch("* id:'fragment_note_state'")
	touch("* id:'item_auto_complete_container' text:'TODO'")

	@titlenote=DadosNota.new.registro_nota
	NovaNota.new.registro_notas_orgzly

	query("* id:'fragment_note_title'", { setText: @titlenote[:title] })
end

Então(/^validar e excluir nota criada$/) do
  pending # Write code here that turns the phrase above into concrete actions
end