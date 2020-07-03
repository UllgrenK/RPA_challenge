***Settings***
Resource    ../Resources/Common.robot
Resource    ../Resources/FoodieApp.robot

Test Setup       Begin Web Test
Test Teardown    End Web Test

***Test Cases***
Navigate to Foodie Front Page
    FoodieApp.Go to Foodie Front Page

Search a recipe
    FoodieApp.Go to Foodie Front Page
    FoodieApp.Search Recipe with a search term    Makkara
    FoodieApp.Select First Recipe




Add a receipe to the shopping list
    FoodieApp.Go to Foodie Front Page
    FoodieApp.Search Recipe with a search term    Mansikka 
    FoodieApp.Select First Recipe
    FoodieApp.Add recipe to shopping list
    FoodieApp.Go to the Shopping List 




