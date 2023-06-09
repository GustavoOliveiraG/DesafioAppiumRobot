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

@keyword(name="environmentConfigBrowserstack")
def environmentConfigBrowserstack(id):

    usuario= JsonUtility.read_environment_json("usuario")
    password= JsonUtility.read_environment_json("password")
    device= JsonUtility.read_environment_json("device")
    os_version= JsonUtility.read_environment_json("os_version")
    app= JsonUtility.read_environment_json("app")
    project= JsonUtility.read_environment_json("project")
    build= JsonUtility.read_environment_json("build")
    name= JsonUtility.read_environment_json("name")

    environmentConfig = [usuario, password, device, os_version, app, project, build, name]
    return environmentConfig[int(id)]