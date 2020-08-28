Quando('clico em botões') do
visit ''
click_on('Começar Automação Web') # clica no botão ou link que contenha o 'texto' ou pode utilizar o click_link_or_button
#---------------------------------------------------------------------------------
visit 'buscaelementos/botoes'
click_button(class: "btn waves-light")
page.all(".material-icons")[2].click
msg = find('#div4').text
expect(msg).to eql 'Você Clicou no Botão!'
#---------------------------------------------------------------------------------
visit 'buscaelementos/botoes'
find('a[onclick="ativaedesativa2()"]').double_click # duplo clique no botão busca por css
find('a[onclick="ativaedesativa2()"]').right_click # clica com o botão direito do mouse
#---------------------------------------------------------------------------------
visit ''
click_link(href:"https://github.com/brunobatista25") # clicar no link mapeado ou clocar o texto que contenha o link nesse caso 'Github'
click_link('Github')
end