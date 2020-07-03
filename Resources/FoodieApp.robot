***Settings***
Resource  PO/FrontPage.robot
Resource  PO/TopNav.robot
Resource  PO/SearchResultsRecipes.robot
Resource  PO/RecipePage.robot
Resource  PO/Cart.robot

***Keywords***

Go to Foodie Front Page
    FrontPage.Load Foodie Front Page

Search Recipe by Category
    [Arguments]   ${Recipe_search_category}



Search Recipe with a search term
    [Arguments]   ${Search_term}
    TopNav.Input search phrase  ${Search_term}
    TopNav.Select category for search  Reseptit
    TopNav.Click search button
    SearchResultsRecipes.Page title should contain the search phrase   ${Search_term}


Select First Recipe
    ${Recipe_name}    SearchResultsRecipes.Get recipe title by order number  1
    Log    ${Recipe_name}
    SearchResultsRecipes.Select Recipe by order number   1
    RecipePage.Recipe title should contain the   ${Recipe_name}

Add selected recipe to shopping cart 
    RecipePage.Add recipe to cart 
