require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'securerandom'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

Capybara.page.driver.browser.manage.window.maximize
