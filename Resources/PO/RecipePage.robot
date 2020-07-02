***Settings***
Library  SeleniumLibrary

***Variables***
${RECIPE_TITLE} =   CSS=h1[itemprop]
${RECIPE_IGREDIENTS} =  xpath=//div[@class="recipe-ingredients"]  

***Keywords***
# Solve locators
Get search result locator   
    [Arguments]   ${ordernumber}
    [Return]    //ul[@class='shelf clear cleafix']/li[${ordernumber}]



# Page actions
Get recipe title 
    Wait until page contains element   ${RECIPE_TITLE}
    ${Title}    Get Text    ${RECIPE_TITLE}
    [Return]   ${Title}






