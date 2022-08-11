from ast import keyword
from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from appium.webdriver.common.touch_action import TouchAction


@keyword(name='Pull To Refresh')
def drag_drop(location, origin, target):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    ele_origin = driver.find_elements_by_id(location)[int(origin)]
    ele_target = driver.find_elements_by_id(location)[int(target)]

    actions = TouchAction(driver)
    actions.long_press(ele_origin).move_to(ele_target)
    actions.release()
    actions.perform()