Quando('acesso a URL') do                                                    
  visit 'treinamento/home'
end                                                                          
                                                                             
Então('verifico se estou na página correta') do                              
  expect(page).to have_current_path ('https://automacaocombatista.herokuapp.com/treinamento/home')
end                                                                          
                                                                             