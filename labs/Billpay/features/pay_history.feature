Feature: Payment History
Scenario: Payment History retains past payments
  Given that I have a Bill to pay
  When I make two payments from Checkin Account
  Then I see a successful payment from my Checkin account
  And I see an entry of the two successful payments in the payment history