*** Settings ***
Library  SeleniumLibrary
Library  ../../ExternalKeywords/KeywordsFileSystem.py

*** Keywords ***
Keywords de systeme fichier create folder
    [arguments]  ${foldername}
    createfolder    ${foldername}
    Log  "Folder create successfuly"

Keywords de systeme fichier save file
    [arguments]  ${foldername}  ${filename}
    savefilebyurl   ${foldername}   ${filename}
    Log  "file save successfuly"



