from selenium import webdriver
my_driver = webdriver.Firefox()
my_driver.get("https://www.linkedin.com/")

my_driver.find_element_by_name("session_key").send_keys("m_sahebi@live.com")
my_driver.find_element_by_name("session_password").send_keys("Aa123456")
my_driver.find_element_by_id("login-submit").submit()