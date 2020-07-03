***Settings***
Library    SeleniumLibrary

***Variables***
${CART_TITLE} =         xpath=//a[@class="shoppinglist-title-bar clearfix"]
  

***Keywords***
# Solve locators

# Page actions
Shopping cart should appear
    Wait until page contains element    ${CART_TITLE}
    





