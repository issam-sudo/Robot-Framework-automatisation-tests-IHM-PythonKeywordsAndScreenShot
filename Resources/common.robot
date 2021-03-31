*** Settings ***
Library  SeleniumLibrary
Resource    ./variable.robot

*** Keywords ***
Begin test web
    open browser    about:blank  browser=${navigateur}
    maximize browser window
    go to   ${Url}

End test web
    close browser

