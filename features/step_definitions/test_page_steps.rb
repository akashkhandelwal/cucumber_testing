When(/^I go to test page$/) do
  visit "application/test/1?auth_token=y7D4LoBzfhvtjJdcWiDK"
  
end

Then(/^I click "(.*?)" button without answering all questions$/) do |arg1|
  page.choose('option_4802')
	select "3", :from => "options[item_1489_1489]"
  click_button('Next')
end

Then(/^I get error message$/) do
  page.should have_content('All the questions are mandatory, Looks like you had missed out to answer some questions')
end