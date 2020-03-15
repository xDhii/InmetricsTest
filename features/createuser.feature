#language:en

Feature: Create User

   Feature Description: This test aims the funcionality to create a new user
   @CreateUser

    Scenario: Create New User

    Given I am on the home page
    And I click on the Sign Up button
    When I fill the Sign Up fields with "Automation Name", "Login Name" and "12345"
    And I click on Save Button
    Then The user was created
    And I can see the message "Now you are registered and can add tasks that you want to do in a far away future."
