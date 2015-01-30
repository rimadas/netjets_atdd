class Paymenthistory
  table(:pay_amt_history,id=>'pay_amt_history')
  def first_payment
pay_amt_history_element.first_row[4]
  end
def payment_history
  pay_amt_history_element.hashes
end
end