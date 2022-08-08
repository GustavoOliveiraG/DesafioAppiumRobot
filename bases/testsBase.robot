*** Settings ***
Resource        keywordsPythonBase.robot
Resource        environmentBase.robot
Resource        helpersBase.robot


*** Keywords ***
Open Session
    Open to App
    Start Screen Recording


Close Session
    Capture Page Screenshot
    Stop Screen Recording
    Close Application