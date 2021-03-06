require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given(/^a customer navigates to the homepage$/) do
  driver.navigate.to "http://notonthehighstreet.com/"
end

When(/^The customer enters ‘Mothers Day Gifts and £0-£50 and submits the request$/) do
  driver.find_element(:id, 'term').send_keys("Mothers day gifts £0 - £50")
  driver.find_element(:class_name, 'gc-form__field--submit').click
end

Then(/^the relevant items are returned$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  begin
  	element = wait.until { driver.find_element(:id => "results") }
  ensure
    driver.quit
  end
end
