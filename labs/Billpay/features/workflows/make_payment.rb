include PageObject::PageFactory
require pageobject

module MakePayment

  def open_the_bankpage_and_login
    visit_page BankLoginPage
    on_page BankLoginPage do |page|
      page.uid = 'your name'
      page.password = 'Ruby'
      page.login

      end
  end

  def open_make_payment_page
    on_page HomePage do |page|
      page.make_payment_link
    end

  end

  def make_payment
    pay_amount='150.00'
    on_page MakeSinglePayment do |page|
      page.payee = 'NEP'
      page.account_type='Checkin'
      page.pay_amount=pay_amount
      page.date='01/29/2015'
      page.submit
    end

    return pay_amount

  end
  def confirmation_message
    on_page(Confirmation).confirm_msg
  end

  def confirmation_number
    on_page(Confirmation).confirmation_number
  end
end

def get_first_payment_entry
  on_page Paymenthistory do |page|
    page.first_payment
  end
end

World MakePayment