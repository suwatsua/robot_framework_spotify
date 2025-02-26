*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml


*** Test Cases ***

As a user, I want to search and play with search credential
    Open Browser    ${homeUrl}    chrome
    When user search to future skill platform with ${search_input} and ${username} and ${password} 
    Sleep    28s 
    Close Browser   # ปิดเบราว์เซอร์หลังจากรอ

