from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException, TimeoutException
from selenium.webdriver import ActionChains
import getpass
import time
import pandas as pd

# Tạo tùy chọn để chạy trình duyệt ở chế độ ẩn (headless)
# chrome_options = Options()
# chrome_options.add_argument("--headless=new")  # Chạy trình duyệt mà không hiển thị giao diện (cách mới cho Chrome 109+)
# chrome_options.add_argument("--disable-gpu")  # Tắt GPU (để an toàn)
# chrome_options.add_argument("--no-sandbox")  # Bỏ qua sandbox
# chrome_options.add_argument("--disable-dev-shm-usage")  # Giảm thiểu bộ nhớ được chia sẻ để tránh lỗi
# chrome_options.add_argument("--log-level=3")  # Giảm thiểu log output từ trình duyệt
# chrome_options.add_argument("--window-size=1920x1080")  # Đặt kích thước cửa sổ để tránh lỗi hiển thị
# Đường dẫn đến file thực thi geckodriver
# gecko_path = r"D:/22DKHA1/OSDS/geckodriver.exe"

# Khởi tởi đối tượng dịch vụ với đường geckodriver
# ser = Service(gecko_path)

# Tạo tùy chọn
# driver = webdriver.Chrome()
# options.binary_location ="C:/Program Files/Mozilla Firefox/firefox.exe"
# Thiết lập firefox chỉ hiện thị giao diện
# options.headless = False

# Khởi tạo driver
driver = webdriver.Chrome()

# driver = webdriver.Firefox(options = options, service=ser)

# Tạo url
url = 'https://www.reddit.com/login/'

# Truy cập
driver.get(url)

# tim phan tử
my_email = input('vui long nhap email: ')
my_pass = getpass.getpass('vui long nhap mat khau: ')
# dang nhap
# my_email = "tienlinhnguyen987@gmail.com"
# my_pass = "Thailinh@123"

# username_input = driver.find_element(By.XPATH, "//input[@id='login-username']")
# pass_input = driver.find_element(By.XPATH, "//input[@id='login-password']")
# # Đăng nhập
# username_input =driver.find_element(By.XPATH, "//input[@name='username']")
# password_input =driver.find_element(By.XPATH, "//input[@name='password']")

# Nhấn thông tin và nhấn nút Enter
# username_input.send_keys(my_email)
# password_input.send_keys(my_password + Keys.ENTER)
# time.sleep(5)
# button_login = driver.find_element(By.XPATH,"//button[text()='Log in']")
# button_login.click()

actionChains = ActionChains(driver)
time.sleep(1)
for i in range(5):
    actionChains.key_down(Keys.TAB).perform()
    time.sleep(1)
time.sleep(1)
actionChains.send_keys(my_email).perform()
time.sleep(1)
actionChains.key_down(Keys.TAB).perform()
actionChains.send_keys(my_pass + Keys.ENTER).perform()
time.sleep(1)
time.sleep(30)

# Truy cap trang post bai
url2 = 'https://www.reddit.com/user/h_t_linh_123/submit/?type=TEXT'
driver.get(url2);
time.sleep(2)

for i in range(17):
    actionChains.key_down(Keys.TAB).perform()
    time.sleep(1)

actionChains.send_keys('posst ne').perform()

actionChains.send_keys(Keys.ENTER).perform()
time.sleep(2)

actionChains.key_down(Keys.TAB).perform()
actionChains.key_down(Keys.TAB).perform()
actionChains.send_keys('ffureddit').perform()

for i in range(2):
    actionChains.key_down(Keys.TAB).perform()
    time.sleep(3)

actionChains.send_keys(Keys.ENTER).perform()

time.sleep(120)
driver.quit()