Feature: Check urls
	In order to test urls
	As a visitor
	I want to navigate to pages

	Scenario: Visit thanks page
		When I go to the thanks page
		Then I should see "You have successfully completed Round"

	Scenario: Visit test page
		When I go to test page
		Then I should see "Set"

	Scenario: Visit instruction page
		When I go to instruction page
		Then I should see "Instruction"