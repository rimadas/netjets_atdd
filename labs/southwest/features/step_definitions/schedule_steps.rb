When(/^I look up the daily flight schedule between two cities$/) do
  visit_page Southwest
  on(Southwest).open_flight_schedule

   on(Flightschedules) do |page|
     page.from_city='CMH'
     page.to_city='SAN'
     page.search
   end
 end

Then(/^I get the daily flight schedule between those cities for that day$/) do
  #getting results
  #validate the two cities are populated in From and To city textbox
  #Validate the date is current day
end

And(/^I get the daily flight schedule between those cities for the previous day$/) do
  #click next days date from the calendar
  #verify returned results
  #validate the two cities are populated in From and To city textbox
  #Validate the date is current day
end