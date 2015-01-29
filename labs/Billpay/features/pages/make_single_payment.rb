require 'page-object'

class MakeSinglePayment
    select_list(:payee, :id => 'uid')
    select_list(:account_type, :id => 'pwd')
    text_field(:pay_amount,:id=>'pay_amt')
    text_field(:date,:id=>'date')
    button(:submit,:id=>'submit')
end
