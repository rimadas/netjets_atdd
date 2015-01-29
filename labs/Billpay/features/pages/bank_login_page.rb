require 'page-object'

class BankLoginPage
  include PageObject::PageFactory
  page_url "bit.ly/watir-webdriver-demo"
  text_field(:uid, :id => 'uid')
  text_field(:password, :id => 'pwd')
  button(:login, :name => 'login')
end