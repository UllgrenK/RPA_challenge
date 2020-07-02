***Settings***
Resource  PO/FrontPage.robot
Resource  PO/TopNav.robot
Resource  PO/SearchResultsRecipes.robot

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
    SearchResultsRecipes.Check page title   ${Search_term}




Select First Recipe
    ${Recipe_name}    SearchResultsRecipes.Get recipe title by order number  1
    Log    ${Recipe_name}
    SearchResultsRecipes.Select Recipe by order number   1
    