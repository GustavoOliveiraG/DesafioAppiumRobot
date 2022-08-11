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


Deve marcar o Checkbox
    ${ELEMENT}=     Set Variable         id=com.amazonaws.devicefarm.android.referenceapp:id/input_checkbox

    Click on Menu Input Controls
    Click Element                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.TextView[2]
    Wait Until Page Contains            Unchecked
    Click Element                       ${ELEMENT}
    Element Attribute Should Match      ${ELEMENT}       checked     true
    Wait Until Page Contains            Checked


Deve fazer um swipe para tela Radio Buttons
    Click on Menu Input Controls
    Swipe By Percent                    85.00   49.00   15.00   49.00
    Swipe By Percent                    85.00   49.00   15.00   49.00
    Wait Until Page Contains            Amazon


Deve fazer um swipe para tela Radio Buttons
    Click on Menu Input Controls
    Vertical Scroll
    Vertical Scroll
    Wait Until Page Contains            Amazon


Deve marcar o radio Amazon
    ${ELEMENT}=     Set Variable         id=com.amazonaws.devicefarm.android.referenceapp:id/radio_button_1

    Click on Menu Input Controls
    Vertical Scroll
    Vertical Scroll
    Click Element                       ${ELEMENT}
    Wait Until Page Contains            Amazon
    Element Attribute Should Match      ${ELEMENT}       checked     true


Deve marcar o radio Web
    ${ELEMENT}=     Set Variable         id=com.amazonaws.devicefarm.android.referenceapp:id/radio_button_2

    Click on Menu Input Controls
    Vertical Scroll
    Vertical Scroll
    Click Element                       ${ELEMENT}
    Wait Until Page Contains            Web
    Element Attribute Should Match      ${ELEMENT}       checked     true


Deve marcar o radio Services
    ${ELEMENT}=     Set Variable         id=com.amazonaws.devicefarm.android.referenceapp:id/radio_button_3

    Click on Menu Input Controls
    Vertical Scroll
    Vertical Scroll
    Click Element                       ${ELEMENT}
    Wait Until Page Contains            Services
    Element Attribute Should Match      ${ELEMENT}       checked     true


Deve fazer um swipe para tela Toggle Button
    ${ELEMENT}=     Set Variable            id=com.amazonaws.devicefarm.android.referenceapp:id/input_switch
    ${Display}=     Set Variable            id=com.amazonaws.devicefarm.android.referenceapp:id/input_switch_display

    Click on Menu Input Controls
    Vertical Scroll
    Vertical Scroll
    Vertical Scroll
    Element Attribute Should Match      ${ELEMENT}      text               OFF
    Element Attribute Should Match      ${Display}      content-desc       OFF


Deve mudar o Toggle Button
    ${ELEMENT}=     Set Variable            id=com.amazonaws.devicefarm.android.referenceapp:id/input_switch
    ${Display}=     Set Variable            id=com.amazonaws.devicefarm.android.referenceapp:id/input_switch_display

    Click on Menu Input Controls
    Vertical Scroll
    Vertical Scroll
    Vertical Scroll
    Click Element                       ${ELEMENT}
    Element Attribute Should Match      ${ELEMENT}      text               ON
    Element Attribute Should Match      ${Display}      content-desc       ON


Deve fazer um swipe para tela Spinner
    ${Display}=     Set Variable            id=com.amazonaws.devicefarm.android.referenceapp:id/input_spinner_message

    Click on Menu Input Controls
    Vertical Scroll
    Vertical Scroll
    Vertical Scroll
    Vertical Scroll
    Element Attribute Should Match      ${Display}      text               Selected: option 1


Deve fazer um swipe para tela Pull To Refresh
    ${ELEMENT}=     Set Variable        id=com.amazonaws.devicefarm.android.referenceapp:id/input_refresh_display

    Click on Menu Input Controls
    Vertical Scroll
    Vertical Scroll
    Vertical Scroll
    Vertical Scroll
    Vertical Scroll
    Element Attribute Should Match      ${ELEMENT}      text               Pull to refresh time