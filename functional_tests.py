from selenium import webdriver


def run():
    browser = webdriver.Firefox()
    browser.get("http://localhost:8000")

    assert "Congratulations!" in browser.title
    print("OK")
