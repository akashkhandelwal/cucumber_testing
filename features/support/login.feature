Feature: Login
	In order to login
	As a candidate
	I want to login

	Scenario: Login to Jombay	
		When I go to the login page
			And I fill in "Email" with "candidate@jombay.com"
			And I fill in "Password" with "12341234"
			And I press "Sign In"
			Then I should be on "Home Page"