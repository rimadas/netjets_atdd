include PageObject::PageFactory

class Southwest
  include PageObject
  page_url "https://www.southwest.com"
  a(:open_flight_schedule,:class => 'swa-footer--item', :text=>"Flight Schedules")
end