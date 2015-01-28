require PageObject::PageFactory
class Southwest
  include PageObject
  page_url "https://www.southwest.com"
  text_field(:from, :id => '')
  select(:to, :id => '')
  button(:, :name => '')

end