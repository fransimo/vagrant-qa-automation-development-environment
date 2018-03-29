from selenium import webdriver
from selenium.webdriver.common.keys import Keys
driver = webdriver.Firefox()

driver.get("http://google.es")
e = driver.find_element_by_name("q")
e.send_keys("Heimdal")
e.send_keys(Keys.RETURN)


