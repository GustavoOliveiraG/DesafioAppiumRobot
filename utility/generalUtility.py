from ast import keyword
from robot.api.deco import keyword


@keyword(name='myName')
def myName():

    nome = "Gustavo"
    return nome


@keyword(name="listName")
def listName(id):

    name = ['Amanda', 'Ana', 'Bruno', 'João']
    return name[int(id)]


@keyword(name="printName")
def printName(name):

    return name












