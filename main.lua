-----------------------------------------------------------------------------------------
--
-- This program you put in the diameter of the pizza 
--
-- Created on: 2019-02-21
-- Created by: Aden Rao
--
-----------------------------------------------------------------------------------------

--Backround & Title
display.setDefault( "background", 100/255, 155/255, 250/255 )

local myText = display.newText( "Pizza Cost Calculator", 160, 5, native.systemFont, 20 )
myText:setFillColor( 255/255, 100/255, 0 )

local pizza = display.newImageRect( "assets/pizza.png", 150, 150 )
pizza.x = 150
pizza.y = 130

--variables
local diameterOfACircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 250, 30 )
diameterOfACircleTextField.id = "diameterOfACircle textField"
local myText = display.newText( "Diameter  ↓", 160, 350, native.systemFont, 20 )

local calculateButton = display.newImageRect( "./assets/button.png", 75, 50 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

local priceOfPizzaTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 25 )
priceOfPizzaTextField.id = "priceOfPizza textField"
priceOfPizzaTextField:setFillColor( 1, 1, 1 )

local function calculateButtonTouch( event )
 
    local diameterOfACircle
    local priceOfPizza
 
    diameterOfACircle = diameterOfACircleTextField.text
    priceOfPizza =  (diameterOfACircle * 0.5 + 1.75) * 1.13

    priceOfPizzaTextField.text = "The cost of the Pizza is " .. costOfPizza

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )