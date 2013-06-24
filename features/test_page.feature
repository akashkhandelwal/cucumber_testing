Feature: Test page
In order to check different answer behaviours
I want to check if questions are answered

	Scenario: Visit test page
		When I go to test page
			Then I should see "Set 1"
			Then I click next button without answering all questions
			Then I get error message
			Then I click next button after answering all the questions
			Then I see no error message