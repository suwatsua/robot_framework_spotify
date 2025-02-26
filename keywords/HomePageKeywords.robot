*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
future skill should display home page and display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}

user search to future skill platform with ${search_input} and ${username} and ${password} 
    CommonKeywords.Wait until element is ready then click element     xpath=//*[@id="global-nav-bar"]/div[2]/div/div/span/div/form/div[2]/input
    CommonKeywords.Wait until element is ready then click element     xpath=//*[@id="global-nav-bar"]/div[2]/div/div/span/div/form/div[2]/input
    CommonKeywords.Wait until element is ready then input text        xpath=//*[@id="global-nav-bar"]/div[2]/div/div/span/div/form/div[2]/input           ${search_input}
    CommonKeywords.Wait until element is ready then click element    xpath=//div[contains(@class, 'e-9640-text encore-text-title-medium') and contains(text(), 'luther (with sza)')]
    CommonKeywords.Wait until element is ready then click element    xpath=//*[@id="main"]/div/div[2]/div[5]/div/div[2]/div[2]/div/main/section/div[3]/div[2]/div/div/div/button/span
    CommonKeywords.Wait until element is ready then click element    xpath=//*[@id="main"]/div/div[3]/div/div[1]/div[2]/p/a
    CommonKeywords.Wait until element is ready then input text        id=login-username            ${username}
    CommonKeywords.Wait until element is ready then input text        id=login-password        ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=//*[@id="login-button"]/span[1]
    CommonKeywords.Wait until element is ready then click element     xpath=//*[@id="main"]/div/div[2]/div[5]/div/div[2]/div[2]/div/main/section/div[3]/div[2]/div/div/div/button/span