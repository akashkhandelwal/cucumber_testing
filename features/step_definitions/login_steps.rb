When(/^I go to the login page$/) do
  visit ('/login')
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, text|
  fill_in(field, with: text) 
end

When(/^I press "(.*?)"$/) do |button|
  click_button button
end

Then(/^I should be on "(.*?)"$/) do |arg1|
  visit ''
end
	