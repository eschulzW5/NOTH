require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given(/^a customer naviagtes to the homepage$/) do
  driver.navigate.to "http://notonthehighstreet.com/"
end

When(/^The customer enters ‘Mothers Day Gifts’ and selects ‘Free delivery’ and submits the request$/) do
  driver.find_element(:id, 'term').send_keys("Mothers day gifts and free delivery")
  driver.find_element(:name, 'search').click
end

Then(/^the relevant items are returned with the most appropriate products at the top$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  begin
  	element = wait.until { driver.find_element(:id => "content") }
  ensure
    driver.quit
  end
end
