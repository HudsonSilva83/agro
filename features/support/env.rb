require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'

@browser = ENV['BROWSER']

if @browser.eql?('headless')

    Capybara.register_driver :selenium do |app|
    #Capybara::Selenium::Driver.load_selenium_
    browser_options = ::Selenium::WebDriver::Chrome::Options.new
    browser_options.args << '--headless'
    browser_options.args << '--disable-gpu' if Gem.win_platform?
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
     end

  end

Capybara.configure do |config|
    #config.default_driver = :selenium_chrome
    config.default_driver = :selenium
    #config.app_host= 'http://homologacao.painel.agrohub.com.br/'
    
end


# 10 segundos para achar um elemento
Capybara.default_max_wait_time = 10
