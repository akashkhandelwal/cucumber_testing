When(/^I go to the thanks page$/) do
  visit 'application/test/:assessment_id/thanks'
end

When(/^I go to instruction page$/) do
  visit 'application/test/:assessment_id/instructions/'
end

When(/^I go to candidates' manage page$/) do
  visit 'admin/candidates/manage/'
end


Then(/^I should see "(.*?)"$/) do |desc|
  page.should have_content desc
end

When(/^I hit logout url$/) do
  visit 'logout'
end

Given(/^a valid user$/) do
	@user = Candidate.create!(email:'candidate@gmail.com', password: 12341234)  
end

When(/^I go to candidate page$/) do
  visit 'admin/candidates'
end


