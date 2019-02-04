require 'rspec'
require 'page-object'
require 'data_magic'
require 'watir'
require 'capybara'
require 'capybara/accessible'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'cucumber'
require 'rspec'

# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end
# 
# Capybara.javascript_driver = :chrome
# World(PageObject::PageFactory)
# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app, browser: :chrome)
# end
# puts '.'
# Capybara.default_driver = :accessible_selenium
# Capybara.javascript_driver = Capybara.default_driver
# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app, browser: :chrome)
# end
#
# Capybara.register_driver :headless_chrome do |app|
#   capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
#       chromeOptions: { args: %w(headless disable-gpu) }
#   )
#
#   Capybara::Selenium::Driver.new app,
#                                  browser: :chrome,
#                                  desired_capabilities: capabilities
# end
#
# Capybara.javascript_driver = :headless_chrome
#
Capybara.default_driver = :accessible_selenium

Capybara.register_driver :poltergeist do |app|
  options = {
    js_errors: true,
    timeout: 120,
    debug: false,
    phantomjs_options: %w[--load-images=no --disk-cache=false],
    inspector: true
  }

  Capybara::Poltergeist::Driver.new(app, options)
end

Capybara.register_driver :accessibility do |app|
  Capybara::Accessible::Driver.new(app)
end
