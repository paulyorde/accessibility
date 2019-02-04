# require 'watir'

Around('@inaccessible') do |scenario, block|
  Capybara::Accessible.skip_audit { block.call }
end

# Before do |scenario|
#   DataMagic.load_for_scenario(scenario)
#   @browser = Watir::Browser.new :chrome
# end
#
#
# After do
#   @browser.close
# end