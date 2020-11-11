Quando('eu faço um Cadastro') do
  visit '/users/new'
  #nome:
  fill_in(id: 'user_name', with: 'Anderson')
  #Último nome:
  fill_in(id: 'user_lastname',with: 'Oliveira')
  #e-mail:
  fill_in(id: 'user_email', with: 'teste@teste.com')
  #Endereço:
  fill_in(id: 'user_address', with: 'Rua do teste')
  #Universidade:
  find('#user_university').set('Universidade Brasil')
  #Profissão:
  fill_in(id: 'user_profile', with: 'Qa Lead')
  #Gênero
  fill_in(id: 'user_gender', with: 'Masculino')
  #Idade:
  fill_in(id: 'user_age', with: '30')
  #Cadastrar:
  click_button('Criar')
  #find('#user_lastname').set('Oliveira') pelo find também da pra fazer passando com css #=id
 end

Então('verifico se fui cadastrado') do
  mensagem_validacao = find('#notice').text
  #puts mensagem_validacao
  expect(mensagem_validacao).to eql 'Usuário Criado com sucesso'
end