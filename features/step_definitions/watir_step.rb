Given(/^I goto a web page$/) do
  visit 'https://www.w3.org/WAI/demos/bad/before/home.html'
end

Then(/^I should see page meet all accessibility criteria$/) do
  # this is setup under the hood. Will check all accessibility rules
end

Given(/^I goto inaccessible web page$/) do
  visit 'https://www.w3.org/WAI/demos/bad/before/home.html'
  sleep 3
end

Then(/^I should interact with the page$/) do
  result = page.has_xpath?('/html/body/div[2]/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table[2]/tbody/tr/td[3]/p[1]')
  expect(result).to be true
end