Given("I am on the home page") do
    visit 'http://www.juliodelima.com.br/taskit/'
end

Given("I click on the Sign Up button") do
    find(:xpath, "//a[@id='signup']").click
end

When("I fill the Sign Up fields with {string}, {string} and {string}") do |name, login, password|
    @name = name
    find(:xpath, "//input[@name='name']").set  name
    find(:xpath, "//input[@name='login']").set  login
    find(:xpath, "//input[@name='password']").set  password
end

When("I click on Save Button") do
    find(:xpath, "//a[contains(text(), 'Save')]").click
end

Then("The user was created") do
    expect(page).to have_content @name
end

Then("I can see the message {string}") do |mensagem|
    expect(page).to have_content mensagem
end
