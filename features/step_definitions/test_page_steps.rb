When(/^I go to test page$/) do
  visit "application/test/1?auth_token=y7D4LoBzfhvtjJdcWiDK"
  
end

Then(/^I click next button without answering all questions$/) do
  page.first(".radio").click
  click_button('Next')
end

Then(/^I click next button after answering all the questions$/) do
	page.all(".radio input[type = 'radio']").each{|o| o.click}
	click_button('Next')
  # find(:select, field).all('option').find{|o| o.value==value}.select_option
end

Then(/^I see no error message$/) do
  page.should_not have_content('All the questions are mandatory, Looks like you had missed out to answer some questions')
end


Then(/^I get error message$/) do
  page.should have_content('All the questions are mandatory, Looks like you had missed out to answer some questions')
end