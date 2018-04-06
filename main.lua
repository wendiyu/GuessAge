-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Wendi Yu
-- Created on: Apr 2018
-- 
-- guess the age
-----------------------------------------------------------------------------------------

local answer = display.newText( "", 1000, 1150, native.systemFont, 100 )

local queation = display.newText( "Guess my age", 1000, 200, native.systemFont, 120 )

local instructionsText = display.newText( "What is my guess? ", 1000, 500, native.systemFont, 120 )
local numberTextField = native.newTextField( display.contentCenterX , display.contentCenterY , 650, 150)
numberTextField.id = "number to guess"

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 700
enterButton.y = display.contentCenterY 
enterButton.id = "enter button"

local function MyAge( event )
	-- body
	local realAge = 18
	local numberUser = tonumber(numberTextField.text)

	if numberUser == 18 then
		answer.text = ("You got it right! Do you want to play again?")
	elseif numberUser <= 18 then
			answer.text = ("You guessed too small. Please try again.")
	elseif numberUser >= 18 then
			answer.text = ("You guessed too big. Please try again.")
	end
end

enterButton:addEventListener("touch", MyAge)