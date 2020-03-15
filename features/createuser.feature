#language:en

Feature: Create User

   Feature Description: This test aims the funcionality to create a new user

    Scenario: Create New User

    Given I am on the home page
    And I am clicks on the Sign Up button
    When I am fills the Sign Up fields with "Automation Name", "Login Name" and "12345"
    And I am clicks on Save Button
    Then The user was created
    And I can see the message "Now you are registered and can add tasks that you want to do in a far away future."
