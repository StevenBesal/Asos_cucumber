Given("I am on the Asos homepage") do
  asos_homepage.visit_homepage
end

Given("I move to sign in page") do
  asos_homepage.click_sign_in_link
end

When("I entre my username") do
  asos_accounts_page.input_username ''
end

When("I entre my valid password and click login") do
  asos_accounts_page.input_password ''
end

Then("I should be loggged into my account") do
  expect(asos_homepage.signed_in?).to be true
  sleep 2
end

Given("I am signed in on the homepage") do
  expect(asos_homepage.signed_in?).to be true
end

Given("Click the logout hidden on the page") do
  asos_homepage.click_sign_out
end

Then("I should be logged out of my account") do
  expect(asos_homepage.sign_out?).to be true
end

Given("I move to signup page") do
  asos_homepage.click_signup
end

When("I entre a username") do
  asos_accounts_page.input_new_username 'stebe123@hotmail.co.uk'
end

When(/^I entre an invalid password and click login (.*)$/) do |password|
  asos_accounts_page.input_invalid_password password
  asos_accounts_page.input_invalid_password.send_keys :tab
  sleep 2
end

Then(/^I should receive a message (.*)$/) do |error|
  expect(asos_accounts_page.check_password_error).to eq error
  sleep 2
end

When("I entre an invalid password and click login {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I entre an invalid password and click login abcd") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I entre an invalid password and click login {int}ab") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I move to new in and all stock") do
  asos_pages.click_new_in
end

When("I change a few of the filters") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("click the any of the the on sceen items") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should end up on a product page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("My my bag is empty") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I navigate to a product page") do
  pending # Write code here that turns the phrase above into concrete actions
end


When("provided the item is in stock I can add to bag") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("add another Item") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("my bag should contain items") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I have items in my bag") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I proceed to checkout") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be transfered to the checkout screen") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the checkout page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I entre an invalid student discount code") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should receive an invalid code message") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I entre a valid student code") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should receive an validation message") do
  pending # Write code here that turns the phrase above into concrete actions
end
