When(/^I go to the thanks page$/) do
  visit '/application/:assessment_id/thanks'
end

When(/^I go to test page$/) do
  visit '/application/test/:assessment_id'
end

When(/^I go to instruction page$/) do
  visit '/application/test/:assessment_id/instructions/:set_id'
end

Then(/^I should see "(.*?)"$/) do |desc|
  page.should have_content desc
end

When(/^I hit logout url$/) do
  visit '/logout'
end

