***Settings***
Resource  PO/FrontPage.robot
Resource  PO/TopNav.robot
Resource  PO/SearchResultsRecipes.robot
Resource  PO/RecipePage.robot
Resource  PO/ShoppingList.robot

***Keywords***

Go to Foodie Front Page
    FrontPage.Load Foodie Front Page


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

Add recipe to shopping list 
    RecipePage.Add recipe to shopping list 

Go to the Shopping List
    TopNav.Click to the shopping list
    ShoppingList.Shopping list page should appear


