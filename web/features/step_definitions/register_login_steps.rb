Given("I visit the portal") do
  @web.load
end

When("I fill personal information and send to register") do
  @web.signin_button.click
  page.execute_script "window.scrollBy(0,500)"
  @web.email_create.set USER["email"]
  @web.button_create.click
  ap USER
  @web.register
end

Then("a user logged has to be shown") do
  expect(page).to have_content(USER["firstname"])
end


############## login steps ##############
When("I fill {string} and {string}") do |email, password|
  @web.signin_button.click
  @web.email_login.set email
  @web.password_login.set password
  @web.submit_button.click
end

Then("a {string} should be validated") do |message|
  expect(page).to have_content(message)
end

