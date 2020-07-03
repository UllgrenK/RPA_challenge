***Settings***
Library    SeleniumLibrary

***Variables***
${TOPNAV_SEARCH_INPUT} =        id=multisearch-query
${TOPNAV_CATEGORYLIST} =        css=div[class='chzn-container chzn-container-single']    
${TOPNAV_SEARCH_BTN} =          id=multisearch-btn
${TOPNAV_RECIPES} =             id=js-root-recipes
${TOPNAV_SHOPPINGLIST_BTN} =    id=topmenu-shoppinglist

***Keywords***
# Solve locators
Get multisearch category locator
    [Arguments]    ${Search_category}
    [Return]       //li[contains(text(), '${Search_category}')]

# Page actions
Click recipes in the topnav
    Click Element    ${TOPNAV_RECIPES}

Input search phrase
    [Arguments]    ${Search_phrase}
    Input Text     ${TOPNAV_SEARCH_INPUT}    ${Search_phrase}

Select category for search
    [Arguments]                         ${Category}
    Wait until page contains Element    ${TOPNAV_CATEGORYLIST}
    Click Element                       ${TOPNAV_CATEGORYLIST}
    ${List_locator} =                   Get multisearch category locator    ${Category}
    Click Element                       ${List_locator}


Click search button
    Click Element    ${TOPNAV_SEARCH_BTN}

Click to the shopping list
    Click Element    ${TOPNAV_SHOPPINGLIST_BTN}
