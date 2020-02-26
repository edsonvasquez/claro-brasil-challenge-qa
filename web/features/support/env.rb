require 'capybara'
require 'capybara/cucumber'
require 'cpf_faker'
require 'httparty'
require "rspec"
require "json"
require "faker"
require 'site_prism'
require 'selenium-webdriver'
require 'awesome_print'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 30
end

Capybara.page.driver.browser.manage.window.maximize
Capybara.ignore_hidden_elements = false

