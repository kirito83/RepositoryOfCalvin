require 'watir'

browser = Watir::Browser.new(:firefox)
browser.goto 'google.com'
search_bar = browser.text_field(class: 'gsfi')
search_bar.set("Hello_world!")
search_bar.send_keys(:enter)

browser.driver.manage.timeouts.implicit_wait = 3

search_result_divs = browser.divs(class: "rc")
search_result_divs.each { |div| p div.h3.text }

p "Ok on peut fermer."
browser.close
