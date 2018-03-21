require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given(/^a customer navigates to the product page$/) do
  driver.navigate.to "https://www.notonthehighstreet.com/thisisnessie/product/personalised-wellies-family-print"
end

When(/^the customer selects delivery information$/) do
  driver.find_element(:id, 'ga_delivery_tab_item').click
end

Then(/^the product delivery information is displayed$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  begin
  	element = wait.until { driver.find_element(:class_name => "ui-state-default delivery_tab ui-tabs-selected ui-state-active") }
  ensure
    driver.quit
  end
end
