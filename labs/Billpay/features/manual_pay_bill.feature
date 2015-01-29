Feature:Single Payment

  Scenario: Making single payment using Checkin Account
    Given that I have a Bill to pay
    When I make a single payment from Checkin Account
    Then I see a successful payment from my Checkin account
    And I see an entry of the successful payment in the payment history

  Scenario: Making single payment using Savings Account
    Given that I have a Bill to pay
    When I make a single payment from Savings Account
    Then I see a successful payment from my Savings account
    And I see an entry of the successful payment in the payment history


  Scenario: Unable to make payment using Checkin Account when Pay Amt crosses the Checkin Account Balance
    Given that I dont have enough balance in my account
    When I make a single payment from Checkin Account
    Then I see a warning message that "Not Sufficient Balance"


  Scenario: Unable to make payment using Savings Account when Pay Amt crosses the Savings Account Balance
    Given that I dont have enough balance in my account
    When I make a single payment from Savings Account
    Then I see a warning message that "Not Sufficient Balance"


