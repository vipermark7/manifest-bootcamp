require "rspec"
require "watir"
require "selenium-webdriver"

include RSpec::Matchers
chromedriver_path = "C:\\Users\\Manifest\\devl\\downloads\\chromedriver.exe"
Selenium::WebDriver::Chrome.driver_path = chromedriver_path
browser = Watir::Browser.new :chrome
browser.goto "http://automationpractice.com/index.php"
browser.text_field(:id => "search_query_top").set "shirt"
browser.button(:name => "submit_search").click
sleep 2
browser.link(:title => "Add to cart").click
puts browser.url
puts browser.text
expect(browser.text.include("In stock")).to be_truthy

browser.close
