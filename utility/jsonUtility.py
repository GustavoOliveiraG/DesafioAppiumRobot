import json


class JsonUtility:

    def read_environment_json(field):
        with open('C:\\MyProjects\\Mobile\\Robot_Python\\environment.json') as config_file:
            config = json.load(config_file)
            environment = config["environment"]
            result = config[environment][field]
        return result