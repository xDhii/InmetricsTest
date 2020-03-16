Given("I am on the home page") do
    visit 'http://www.juliodelima.com.br/taskit/'
end

Given("I click on the Sign Up button") do
    find(:xpath, "//a[@id='signup']").click
end

When("I fill the Sign Up name, login and password fields") do
    @name = p SecureRandom.urlsafe_base64(10)
    @login = p SecureRandom.urlsafe_base64(10)
    @password = p SecureRandom.urlsafe_base64(10)
    find(:xpath, "//input[@name='name']").set   @name
    find(:xpath, "//input[@name='login']").set   @login
    find(:xpath, "//input[@name='password']").set  @password
end

When("I click on Save Button") do
    find(:xpath, "//a[contains(text(), 'Save')]").click
end

Then("I'm logged in") do
    expect(page).to have_content @name
end

Then("I can see the message {string}") do |mensagem|
    expect(page).to have_content mensagem
end

When("I sign in on the page") do
    find(:xpath, "//ul[contains(@class,'right')]//a[@data-target='signinbox']").click
    find(:xpath, "//div[@id='signinbox']//input[@name='login']").set  @login
    find(:xpath, "//div[@id='signinbox']//input[@name='password']").set  @password
    find(:xpath, "//div[@class='modal-footer']//a[contains(text(), 'Sign in')]").click
end

When("I click to add some tasks on homepage") do
    find(:xpath, "//div[@class='section center']//a[contains(text(), 'some tasks')]").click
end

When("I click to add a task") do
    find(:xpath, "//button[@data-target='addtask']").click
end

Then("I fill the New Task fields") do
    @taskname = p SecureRandom.urlsafe_base64(10)
    find(:xpath, "//input[@name='title']").set @taskname
    find(:xpath, "//textarea[@name='text']").set p SecureRandom.urlsafe_base64(100)
    pending # There's a BUG on date picker element, so, I can't go ahead with this test ¯\_(ツ)_/¯
end

Then("The task was created") do
    pending # Can't get to this step due to a bug found on the last step ¯\_(ツ)_/¯
end
