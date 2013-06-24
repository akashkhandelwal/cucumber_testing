Feature: Check urls
	In order to test urls
	As a visitor
	I want to navigate to pages

	Scenario: Visit thanks page
		When I go to the thanks page
		Then I should see "You have successfully completed Round"

	Scenario: Visit instruction page
		When I go to instruction page
		Then I should see "Instruction"

	Scenario: Visit candidates index page
		When I go to the login page
			And I fill in "Email" with "admin@jombay.com"
			And I fill in "Password" with "12341234"
			And I press "Sign In"
			Then I should be on "Home Page"
		When I go to candidate page
		Then I should see "All Candidates"

	Scenario: Visit candidates' manage page
		When I go to the login page
			And I fill in "Email" with "admin@jombay.com"
			And I fill in "Password" with "12341234"
			And I press "Sign In"
			Then I should be on "Home Page"
		When I go to candidates' manage page
			Then I should see "Upload new candidates"
			And I should see "Download candidates"