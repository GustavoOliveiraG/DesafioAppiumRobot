*** Settings ***
Documentation       Suite description
Resource            ../../bases/testsBase.robot
Resource            ../../pages/menuPage.robot

Test Setup          Open Session
Test Teardown       Close Session


*** Test Cases ***
Deve digitar um texto no campo Text Field
    Click on Menu Input Controls
    Input Text                          id=com.amazonaws.devicefarm.android.referenceapp:id/input_edit_text         Teste QA Escrevendo no campo Text Field
    Wait Until Page Contains            Teste QA Escrevendo no campo Text Field


Deve fazer um swipe para tela Checkbox
    Click on Menu Input Controls
    Swipe By Percent                    85.00   49.00   15.00   49.00
    Wait Until Page Contains            Unchecked


Deve fazer um swipe para tela Checkbox
    Click on Menu Input Controls
    Swipe By Percent                    85.00   49.00   15.00   49.00
    Wait Until Page Contains            Unchecked


Deve marcar o Checkbox
    ${ELEMENT}=     Set Variable         id=com.amazonaws.devicefarm.android.referenceapp:id/input_checkbox

    Click on Menu Input Controls
    Click Element                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.TextView[2]
    Wait Until Page Contains            Unchecked
    Click Element                       ${ELEMENT}
    Element Attribute Should Match      ${ELEMENT}       checked     true
    Wait Until Page Contains            Checked