include PageObject::PageFactory

class Flightschedules
  include PageObject
  text_field(:from_city, :id => 'originAirport_displayed')
  text_field(:to_city, :id => 'destinationAirport_displayed')
  button(:search,:id=>'flightSchedulesForm_submitButton')
end