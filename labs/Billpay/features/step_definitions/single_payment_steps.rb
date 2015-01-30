Given(/^that I have a Bill to pay$/) do
  # Payee is setup for the user
end

When(/^I make a single payment from Checkin Account$/) do
  open_the_bankpage_and_login
  open_make_payment_page
  @pay_amount=make_payment
end

Then(/^I see a successful payment from my Checkin account$/) do
  expect(confirmation_message)=="Thank you for your payment"
  expect(confirmation_number.size).to eq 6
end

And(/^I see an entry of the successful payment in the payment history$/) do

  expect(get_first_payment_history).to eq @pay_amount
end

When(/^I make a single payment from Savings Account$/) do
  # After login visit page Make Payment from Home page
  # Select Payee
  # Select Pay From Savings Account
  # Enter Pay Amount
  # Select Date for payment
  # Submit
end

Then(/^I see a successful payment from my Savings account$/) do
  # Verify that there is a Success Message "Thank you for your payment"
  # capture the system generated Confirmation Number
end

Given(/^that I dont have enough balance in my account$/) do
  # Login and find out my balance
  # mak
end

Then(/^I see a warning message that "([^"]*)"$/) do |arg|
  # Verify that there is a warning message "Not Sufficient Balance"
end

And(/^I see the entry of the old payment history$/) do
  pending
end