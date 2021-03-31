*** Settings ***
Documentation   User defined keywords
Library  SeleniumLibrary
Resource    ../Resources/common.robot
Resource    ../Resources/PO/ResourceOS.robot
Suite Setup  common.Begin test web
Suite Teardown  common.End test web


*** Keywords ***
external keywords
        wait until page contains    Fashion
        ${title} =  get location
        Log  ${title}
        ResourceOS.Keywords de systeme fichier create folder    images1
        ResourceOS.Keywords de systeme fichier save file    images1    robot1.jpg

capture page and specific element
    capture element screenshot  xpath=//*[@id="main-content"]/div[2]/div[1]/div/div/div[1]/div[1]/a/span/div  screenElement.png
    capture page screenshot  pageScreen.png


*** Test Case ***
Main Test
    external keywords
    capture page and specific element

