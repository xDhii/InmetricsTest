#language:en

Feature: InMetrics Test

   Feature Description: This test aims the funcionalities to create a new user, add some task and visualize this task

   Scenario: Create New User

   Given I am on the home page
   And I click on the Sign Up button
   When I fill the Sign Up name, login and password fields
   And I click on Save Button
   Then I'm logged in
   And I can see the message "Now you are registered and can add tasks that you want to do in a far away future."


   Scenario: Add a task

   Given I am on the home page
   When I sign in on the page
   Then I'm logged in
   When I click to add some tasks on homepage
   And I click to add a task
   Then I fill the New Task fields
   And The task was created
