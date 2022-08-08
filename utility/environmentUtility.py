from ast import keyword
from robot.api.deco import keyword
from jsonUtility import JsonUtility


@keyword(name="environmentConfig")
def environmentConfig(id):
    appium_automationName = JsonUtility.read_environment_json("appium_automationName")
    platformName = JsonUtility.read_environment_json("platformName")
    appium_deviceName = JsonUtility.read_environment_json("appium_deviceName")
    appium_app = JsonUtility.read_environment_json("appium_app")
    appium_udid = JsonUtility.read_environment_json("appium_udid")

    environmentConfig = [appium_automationName, platformName, appium_deviceName, appium_app, appium_udid]
    return environmentConfig[int(id)]