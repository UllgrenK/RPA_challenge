***Settings***
Library    SeleniumLibrary

***Variables***
${SRCH_RCIPES_TITLE} =    CSS=h2[class=category-header]
${SRCH_RCIPES_NR_OF_RESULTS} =

***Keywords***
# Solve locators
Get search result locator
    [Arguments]    ${ordernumber}
    [Return]       //ul[@class='shelf clear cleafix']/li[${ordernumber}]

Get recipe name locator
    [Arguments]    ${ordernumber}
    [Return]       //ul[@class='shelf clear cleafix']/li[${ordernumber}]//div[@class='name']

# Page actions
Page title should contain the search phrase
    [Arguments]                         ${Search_phrase}
    Wait until page contains element    ${SRCH_RCIPES_TITLE}
    Element should contain              ${SRCH_RCIPES_TITLE}    ${Search_phrase}

Check number of search results


Select Recipe by order number
    [Arguments]                         ${ordernumber}
    Wait until page contains element    ${SRCH_RCIPES_TITLE}
    ${Recipe_locator} =                 Get search result locator    ${ordernumber}
    Click element                       ${Recipe_locator}

Get recipe title by order number
    Wait until page contains element    ${SRCH_RCIPES_TITLE}
    [Arguments]                         ${ordernumber}
    ${Name_locator} =                   Get recipe name locator    ${ordernumber}
    ${title} =                          Get Text                   ${Name_locator}
    [Return]                            ${title}



