***Settings***
Library    SeleniumLibrary

***Variables***
${FRONTPAGE_URL} =      https://www.foodie.fi/
${FRONTPAGE_PANEL} =    id:user-menu-pane


***Keywords***
Load Foodie Front Page
    Go To                               https://www.foodie.fi/
    Wait until Page Contains element    ${FRONTPAGE_PANEL} 
    Title should be                     Foodie.fi ruoan verkkokauppa | Tilaa ruokaa Prismasta, S-marketista, Alepasta ja Salesta
