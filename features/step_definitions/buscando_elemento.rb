Quando('acesso a url de botoes') do
 visit 'buscaelementos/botoes'
end

Então('verifico se encontrei os elementos') do
  page.all(:css,'.btn') # all= busca todos os elementos que contém all na página com a nova atualização não precisa usar o ':css'
  find('#teste').click # find= busca um elemento mapeado(único)
  find_by_id('teste') # busca pelo id
  find_button(class:'btn waves-light') # busca pela class
  first('.btn') # busca o primeiro elemento que está mapeado
  find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')# busca por um link
end