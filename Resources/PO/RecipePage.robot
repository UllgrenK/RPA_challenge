***Settings***
Library    SeleniumLibrary

***Variables***
${RECIPE_TITLE} =         css=h1[itemprop]
${RECIPE_IGREDIENTS} =    xpath=//div[@class="recipe-ingredients"] 
${RECIPE_ADD_TO_CART_BTN} =    xpath=//span[@class="block amount-label-text"]   

***Keywords***
# Solve locators

# Page actions
Get recipe title
    Wait until page contains element    ${RECIPE_TITLE}
    ${Title}                            Get Text           ${RECIPE_TITLE}
    [Return]                            ${Title}

Add recipe to shopping list
    Wait until page contains element    ${RECIPE_TITLE}
    Click element    ${RECIPE_ADD_TO_CART_BTN}


Recipe title should contain the   
    [Arguments]   ${Recipe_name}
    Wait until page contains element    ${RECIPE_TITLE}
    Element should contain  ${RECIPE_TITLE}   ${Recipe_name}  

