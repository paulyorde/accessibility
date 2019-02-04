Given(/^I goto a web page$/) do
  puts visit 'https://www.w3.org/WAI/demos/bad/before/home.html'
end

Then(/^I should see page meet all accessibility criteria$/) do
  # this is setup under the hood. Will check all accessibility rules
end