require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    #Capybara disponibiliza 3 drivers padrão de configuração: selenium(firefox) , selenium_chrome, selenium_chrome_hedless(sem gpu- não sobe o chrome)
    config.default_driver = :selenium_chrome
    #configurando url padrão
    config.app_host = 'https://automacaocombatista.herokuapp.com/'
    #configurando o tempo de espera dos elementos na tela
    config.default_max_wait_time = 5
end